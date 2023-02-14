#include <stdlib.h>
#include "mode0.h"
#include "battle.h"
#include "game.h"
#include "sound.h"
#include "heal_sound.h"
#include "hit_sound.h"

OBJ_ATTR shadowOAM[128];

SPRITE fox;
SPRITE spirit;
SPRITE shaman;
SPRITE playerHearts[numHearts];
SPRITE enemyHearts[numHearts];
SPRITE popUp;

int shadowOAMcounter;

int enemyHeartCount;
int playerHeartCount;

int damage;
int spiritDamage;
int prevDamage;

enum {IDLE, DANCE1, DANCE2, DANCE3};
enum {PLAYERTURN, ENEMYTURN};
int battleState;
int foxHit;
int enemyHit;
int prevAttack;
int time_s;
int instructions3;

// BATTLE mode
void initBattleMode() {
    enemyHeartCount = 5;
    playerHeartCount = 5;
    time_s = 0;
    foxHit = 0;
    enemyHit = 0;
    prevDamage = 0;
    battleState = PLAYERTURN;

    setupBattleInterrupts();

    initFox();
    initSpirit();
    initHearts();
    initPopUp();
}

void updateBattleMode() {
    animateHearts();
    if (battleState == PLAYERTURN) {
        updateFox();
    }
    if (battleState == ENEMYTURN) {
        updateSpirit();
    }
    if (BUTTON_PRESSED(BUTTON_L)) {
        popUp.hide = 0;
    }
    if (enemyHit > 0) {
        enemyHit--;
    }
    if (foxHit > 0) {
        foxHit--;
    }
}

void drawBattleMode() {
    shadowOAMcounter = 0;

    drawFox();
    drawSpirit();
    drawHearts();
    drawPopUp();
    drawTimer();

    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 512);
}


// FOX static sprite
void initFox() {
    fox.width = 16;
    fox.height = 16;
    fox.worldRow = 84;
    fox.worldCol = 50;
    fox.aniCounter = 0;
    fox.curFrame = 0;
    fox.numFrames = 4;
}

void updateFox() {
    animateFox();
    // attack
    if (BUTTON_PRESSED(BUTTON_A) && enemyHeartCount > 0) {
        playSoundB(hit_sound_data, hit_sound_length, 0);
        damage = (rand() % 2) + 1;
        for (int i = 0; i < damage; i++) {
            if (enemyHeartCount > 0) {
                enemyHearts[enemyHeartCount - 1].active = 0;
                enemyHeartCount--;
            }
        }
        time_s = 0;
        enemyHit = 15;
        battleState = ENEMYTURN;
    }
    //heal
    if (BUTTON_PRESSED(BUTTON_B) && (player.heal > 0 && playerHeartCount < 5)) {
        playSoundB(heal_sound_data, heal_sound_length, 0);
        for (int i = 0; i < 2; i++) {
            if (playerHeartCount < 5) {
                playerHearts[playerHeartCount++].active = 1;
            }
        }
        player.heal--;
        time_s = 0;
        battleState = ENEMYTURN;
    } else if (BUTTON_PRESSED(BUTTON_B) && (player.heal == 0 || playerHeartCount == 5)) {
        popUp.hide = 1;
        time_s = 0;
        battleState = ENEMYTURN;
    }
}

void animateFox() {
    if (fox.aniCounter % 10 == 0) {
        if (fox.curFrame < fox.numFrames - 1) {
            fox.curFrame++;
        } else {
            fox.curFrame = 0;
        }
    }
    fox.aniCounter++;
}

void drawFox() {
    if (foxHit > 0) {
        shadowOAM[shadowOAMcounter].attr0 = fox.worldRow | ATTR0_SQUARE | ATTR0_MOSAIC;
    } else {
        shadowOAM[shadowOAMcounter].attr0 = fox.worldRow | ATTR0_SQUARE;
    }
    shadowOAM[shadowOAMcounter].attr1 = fox.worldCol | ATTR1_SMALL;
    shadowOAM[shadowOAMcounter].attr2 = ATTR2_TILEID(2, fox.curFrame * 2) | ATTR2_PALROW(0);
    shadowOAMcounter++;
}


// SPIRIT static sprite
void initSpirit() {
    spirit.width = 16;
    spirit.height = 16;
    spirit.worldRow = 28;
    spirit.worldCol = 180;
    spirit.aniCounter = 0;
    spirit.curFrame = 0;
    spirit.numFrames = 4;
}

void updateSpirit() {
    animateSpirit();
    // dealing random damage on a timed system
    if (spirit.aniCounter % 110 == 0) {
        if (player.cheat == 0) {
            if (prevDamage == 2) {
                spiritDamage = 1;
            } else {
                spiritDamage = (rand() % 2) + 1;
            }
        } else {
            spiritDamage = (rand() % 2);
        }
        for (int i = 0; i < spiritDamage; i++) {
            if (playerHeartCount > 0) {
                playerHearts[playerHeartCount - 1].active = 0;
                playerHeartCount--;
            }
        }
        if (spiritDamage > 0) {
            playSoundB(hit_sound_data, hit_sound_length, 0);
        }
        time_s = 0;
        if (spiritDamage > 0) {
            foxHit = 15;
        }
        prevDamage = spiritDamage;
        battleState = PLAYERTURN;
    }
}

void animateSpirit() {
    if (spirit.aniCounter % 10 == 0) {
        if (spirit.curFrame < spirit.numFrames - 1) {
            spirit.curFrame++;
        } else {
            spirit.curFrame = 0;
        }
    }
    spirit.aniCounter++;
}

void drawSpirit() {
    if (enemyHit > 0) {
        REG_MOSAIC = MOS_OH(1) | MOS_OV(1);
        shadowOAM[shadowOAMcounter].attr0 = spirit.worldRow | ATTR0_SQUARE | ATTR0_MOSAIC;
    } else {
        shadowOAM[shadowOAMcounter].attr0 = spirit.worldRow | ATTR0_SQUARE;
    }
    shadowOAM[shadowOAMcounter].attr1 = spirit.worldCol | ATTR1_SMALL;
    shadowOAM[shadowOAMcounter].attr2 = ATTR2_TILEID(spirit.curFrame * 2, 20) | ATTR2_PALROW(0);
    shadowOAMcounter++;
}


// HEART sprites - update with health
void initHearts() {
    int playerHeartCol = 156;
    int enemyHeartCol = 20;

    for (int i = 0; i < numHearts; i++) {
        playerHearts[i].worldRow = 94;
        playerHearts[i].worldCol = playerHeartCol;
        playerHearts[i].active = 1;
        playerHearts[i].curFrame = 0;
        playerHearts[i].aniCounter = 0;
        playerHearts[i].numFrames = 2;
        playerHeartCol += 16;
    }

    for (int i = 0; i < numHearts; i++) {
        enemyHearts[i].worldRow = 30;
        enemyHearts[i].worldCol = enemyHeartCol;
        enemyHearts[i].active = 1;
        enemyHearts[i].curFrame = 0;
        enemyHearts[i].aniCounter = 0;
        enemyHearts[i].numFrames = 2;
        enemyHeartCol += 16;
    }
}

void animateHearts() {
    for (int i = 0; i < numHearts; i++) {
        // fox hearts
        if (playerHearts[i].aniCounter % 10 == 0) {
            if (playerHearts[i].curFrame < playerHearts[i].numFrames - 1) {
                playerHearts[i].curFrame++;
            } else {
                playerHearts[i].curFrame = 0;
            }
        }
        playerHearts[i].aniCounter++;
        
        // spirit hearts
        if (enemyHearts[i].aniCounter % 10 == 0) {
            if (enemyHearts[i].curFrame < enemyHearts[i].numFrames - 1) {
                enemyHearts[i].curFrame++;
            } else {
                enemyHearts[i].curFrame = 0;
            }
        }
        enemyHearts[i].aniCounter++;
    }
}

void drawHearts() {
    for (int i = 0; i < numHearts; i++) {
        if (playerHearts[i].active == 0) {
            shadowOAM[shadowOAMcounter].attr0 = ATTR0_HIDE;
        } else {    
            shadowOAM[shadowOAMcounter].attr0 = playerHearts[i].worldRow | ATTR0_SQUARE;
            shadowOAM[shadowOAMcounter].attr1 = playerHearts[i].worldCol | ATTR1_TINY;
            shadowOAM[shadowOAMcounter].attr2 = ATTR2_TILEID(playerHearts[i].curFrame + 8, 0) | ATTR2_PALROW(0);
        }
        shadowOAMcounter++;
    }

    for (int i = 0; i < numHearts; i++) {
        if (enemyHearts[i].active == 0) {
            shadowOAM[shadowOAMcounter].attr0 = ATTR0_HIDE;
        } else {    
            shadowOAM[shadowOAMcounter].attr0 = enemyHearts[i].worldRow | ATTR0_SQUARE;
            shadowOAM[shadowOAMcounter].attr1 = enemyHearts[i].worldCol | ATTR1_TINY;
            shadowOAM[shadowOAMcounter].attr2 = ATTR2_TILEID(enemyHearts[i].curFrame + 8, 1) | ATTR2_PALROW(0);
        }
        shadowOAMcounter++;
    }
}


// pop ups for when you can't use a move
void initPopUp() {
    popUp.worldRow = 50;
    popUp.worldCol = 90;
    popUp.active = 0;
}

void drawPopUp() {
    if (popUp.hide == 0) {
        shadowOAM[shadowOAMcounter].attr0 = ATTR0_HIDE;
    } else {
        shadowOAM[shadowOAMcounter].attr0 = popUp.worldRow | ATTR0_SQUARE;
        shadowOAM[shadowOAMcounter].attr1 = popUp.worldCol | ATTR1_LARGE;
        shadowOAM[shadowOAMcounter].attr2 = ATTR2_TILEID(0, 12) | ATTR2_PALROW(0);
    }
    shadowOAMcounter++;
}


/////////////////////// final battle methods /////////////////////////////////////////

// FINAL BOSS BATTLE
void initFinalBattle() {
    enemyHeartCount = 5;
    playerHeartCount = 5;
    battleState = PLAYERTURN;
    shadowOAMcounter = 0;
    prevAttack = IDLE;
    time_s = 0;
    foxHit = 0;
    enemyHit = 0;
    instructions3 = 1;

    setupBattleInterrupts();
    setupSounds();

    initFox2();
    initShaman();
    initHearts();
}

void updateFinalBattle() {
    animateHearts();
    animateFox();
    if (battleState == PLAYERTURN && instructions3 == 0) {
        updateFox2();
    }
    if (battleState == ENEMYTURN && instructions3 == 0) {
        updateShaman();
    }
    if (BUTTON_PRESSED(BUTTON_L)) {
        instructions3 = 0;
    }
}

void drawFinalBattle() {
    shadowOAMcounter = 0;

    drawFox2();
    drawShaman();
    drawHearts();
    drawTimer2();

    if (instructions3 == 0) {
        shadowOAM[shadowOAMcounter].attr0 = ATTR0_HIDE;
    } else {
        shadowOAM[shadowOAMcounter].attr0 = 50 | ATTR0_SQUARE;
        shadowOAM[shadowOAMcounter].attr1 = 90 | ATTR1_LARGE;
        shadowOAM[shadowOAMcounter].attr2 = ATTR2_TILEID(8, 24) | ATTR2_PALROW(0);
    }
    shadowOAMcounter++;

    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 512);
}


// final battle for fox
void initFox2() {
    fox.width = 16;
    fox.height = 16;
    fox.worldRow = 84;
    fox.worldCol = 50;
    fox.aniCounter = 0;
    fox.curFrame = 0;
    fox.numFrames = 4;
    fox.aniState = IDLE;
}

void updateFox2() {
    // dance 1 - spin
    if (BUTTON_PRESSED(BUTTON_A) && enemyHeartCount > 0) {
        fox.aniState = DANCE1;
        fox.aniCounter++;
        if (prevAttack == DANCE2) {
            damage = 2;
            for (int i = 0; i < damage; i++) {
                if (enemyHeartCount > 0) {
                    enemyHearts[enemyHeartCount - 1].active = 0;
                    enemyHeartCount--;
                }
            }
        } else {
            enemyHearts[enemyHeartCount - 1].active = 0;
            enemyHeartCount--;
        }
        prevAttack = DANCE1;
        time_s = 0;
        battleState = ENEMYTURN;
    }

    // dance 2 - 2 step
    if (BUTTON_PRESSED(BUTTON_B) && enemyHeartCount > 0) {
        fox.aniState = DANCE2;
        fox.aniCounter++;
        enemyHearts[enemyHeartCount - 1].active = 0;
        enemyHeartCount--;
        prevAttack = DANCE2;
        time_s = 0;
        battleState = ENEMYTURN;
    }

    // dance 3 - trot
    if (BUTTON_PRESSED(BUTTON_R) && enemyHeartCount > 0) {
        fox.aniState = DANCE3;
        fox.aniCounter++;
        if (prevAttack == DANCE1) {
            damage = 2;
            for (int i = 0; i < damage; i++) {
                if (enemyHeartCount > 0) {
                    enemyHearts[enemyHeartCount - 1].active = 0;
                    enemyHeartCount--;
                }
            }
        } else {
            enemyHearts[enemyHeartCount - 1].active = 0;
            enemyHeartCount--;
        }
        prevAttack = DANCE3;
        time_s = 0;
        battleState = ENEMYTURN;
    }
}

void drawFox2() {
    shadowOAM[shadowOAMcounter].attr0 = fox.worldRow | ATTR0_SQUARE;
    shadowOAM[shadowOAMcounter].attr1 = fox.worldCol | ATTR1_SMALL;
    shadowOAM[shadowOAMcounter].attr2 = ATTR2_TILEID((fox.aniState * 2) + 18, fox.curFrame * 2) | ATTR2_PALROW(0);
    shadowOAMcounter++;
}


// SHAMAN static sprite
void initShaman() {
    shaman.width = 32;
    shaman.height = 32;
    shaman.worldRow = 20;
    shaman.worldCol = 170;
    shaman.aniCounter = 0;
    shaman.curFrame = 0;
    shaman.numFrames = 2;
}

void updateShaman() {
    // animate
    if (shaman.aniCounter % 10 == 0) {
        if (shaman.curFrame < shaman.numFrames - 1) {
            shaman.curFrame++;
        } else {
            shaman.curFrame = 0;
        }
    }
    shaman.aniCounter++;

    // actual game function
    if (shaman.aniCounter % 200 == 0) {
        spiritDamage = (rand() % 2) + 1;
        for (int i = 0; i < spiritDamage; i++) {
            if (playerHeartCount > 0) {
                playerHearts[playerHeartCount - 1].active = 0;
                playerHeartCount--;
            }
        }
        fox.aniState = IDLE;
        time_s = 0;
        battleState = PLAYERTURN;
    }
}

void drawShaman() {
    shadowOAM[shadowOAMcounter].attr0 = shaman.worldRow | ATTR0_SQUARE;
    shadowOAM[shadowOAMcounter].attr1 = shaman.worldCol | ATTR1_MEDIUM;
    shadowOAM[shadowOAMcounter].attr2 = ATTR2_TILEID(14, shaman.curFrame * 4) | ATTR2_PALROW(0);
    shadowOAMcounter++;
}


//////////////////////// battle interrupts ///////////////////////////////////////

void battleInterruptHandler(void) {
    REG_IME = 0;
    if (REG_IF & INT_TM2) {
        if (time_s >= 20) {
            time_s = 0;
            if (battleState == PLAYERTURN) {
                battleState = ENEMYTURN;
            } else if (battleState == ENEMYTURN) {
                battleState = PLAYERTURN;
            }
        } else if (instructions3 == 0) {
            time_s++;
        }
    }
    if(REG_IF & INT_VBLANK) {
        if (soundA.isPlaying) {

            soundA.vBlankCount = soundA.vBlankCount + 1;
            if (soundA.vBlankCount > soundA.duration) {
                if (soundA.loops) {
                    playSoundA(soundA.data, soundA.length, soundA.loops);
                } else {
                    soundA.isPlaying = 0;
                    dma[1].cnt = 0;
                    REG_TM0CNT = TIMER_OFF;
                }
            }
        }

        if (soundB.isPlaying) {

            soundB.vBlankCount = soundB.vBlankCount + 1;
            if (soundB.vBlankCount > soundB.duration) {
                if (soundB.loops) {
                    playSoundB(soundB.data, soundB.length, soundB.loops);
                } else {
                    soundB.isPlaying = 0;
                    dma[2].cnt = 0;
                    REG_TM1CNT = TIMER_OFF;
                }
            }
		}
        REG_IF = INT_VBLANK;
    }
    REG_IF = REG_IF;
    REG_IME = 1;
}

void enableBattleInterrupts(void) {
    REG_IE = INT_TM2;
    REG_TM2CNT = 0;
    REG_TM2D = 65536 - 16384;
    REG_TM2CNT = TM_FREQ_1024 | TIMER_ON | TM_IRQ;
}

void setupBattleInterrupts(void) {
    REG_IME = 0;
    REG_INTERRUPT = battleInterruptHandler;
    enableBattleInterrupts();

    REG_IE |= INT_VBLANK;
    REG_DISPSTAT |= INT_VBLANK_ENABLE;

    REG_IME = 1;
}

void drawTimer() {
    if (battleState == PLAYERTURN) {
        SCREENBLOCK[28].tilemap[OFFSET(6, 19, 32)] = 31 - time_s;
    } else {
        SCREENBLOCK[28].tilemap[OFFSET(6, 19, 32)] = 11;
    }
    shadowOAMcounter++;
}

void drawTimer2() {
    if (battleState == PLAYERTURN) {
        SCREENBLOCK[28].tilemap[OFFSET(6, 19, 32)] = 7 + time_s;
    } else {
        SCREENBLOCK[28].tilemap[OFFSET(6, 19, 32)] = 7 + 20;
    }
    shadowOAMcounter++;
}