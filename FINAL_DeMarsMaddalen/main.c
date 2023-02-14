#include <stdlib.h>
#include <stdio.h>
#include "mode0.h"
// music - sound things
#include "sound.h"
#include "game_song.h"
#include "finalbattle_song.h"
#include "battle_song.h"
#include "minigame_song.h"
#include "heal_sound.h"
#include "hit_sound.h"
#include "pause_song.h"
#include "lose_song.h"
#include "win_song.h"
// game state methods
#include "game.h"
#include "battle.h"
#include "minigame.h"
#include "minigame2.h"
// background and sprites things
#include "sprites.h"
#include "startscreen.h"
#include "instructions1.h"
#include "instructions2.h"
#include "instructions3.h"
#include "foreground.h"
#include "heals.h"
#include "BG1.h"
#include "minigame1screen.h"
#include "minigame2screen.h"
#include "pauseforeground.h"
#include "foxscreen.h"
#include "pausescreenNEW.h"
#include "battlescreen.h"
#include "finalbattlescreen.h"
#include "finalbattleTimer.h"
#include "losescreen.h"
#include "winscreen.h"
#include "cheatscreen.h"
#include "cheatscreen2.h"
#include "cheatscreen3.h"

// NOTES
/* 
    - lil notes from me:
        - all visuals were drawn by me, and all music was made and recorded by me as well :)) <3
*/

// Prototypes.
void initialize();

// State Prototypes.
void goToSplash();
void splash();
void goToInstructions();
void instruct();
void goToInstructions2();
void instruct2();
void goToInstructions3();
void instruct3();
void goToGame();
void game();
void goToMiniGame();
void miniGame();
void goToMiniGame2();
void miniGame2();
void goToBattle();
void battle();
void goToFinalBattle();
void finalBattle();
void goToCheat();
void cheat();
void goToPause();
void pause();
void goToWin();
void win();
void goToLose();
void lose();

// States.
enum {
    SPLASH,
    INSTRUCT,
    INSTRUCT2,
    INSTRUCT3,
    GAME,
    MINIGAME,
    MINIGAME2,
    BATTLE,
    FINAL,
    CHEAT,
    PAUSE,
    WIN,
    LOSE
};
int state;

// Button Variables.
unsigned short buttons;
unsigned short oldButtons;

// Shadow OAM.
OBJ_ATTR shadowOAM[128];

// variables
int seed;
int screenBlock1;
int screenBlock2;
int prevState;
int prevVoff;
int prevHoff;
int cheatRand;
int cheatActivated;
int shardCount;


int main() {
    initialize();

    while (1) {
        // Update button variables.
        oldButtons = buttons;
        buttons = BUTTONS;

        // State Machine.
        switch (state) {
            case SPLASH:
                splash();
                break;
            case INSTRUCT:
                instruct();
                break;
            case INSTRUCT2:
                instruct2();
                break;
            case INSTRUCT3:
                instruct3();
                break;
            case GAME:
                game();
                break;
            case BATTLE:
                battle();
                break;
            case FINAL:
                finalBattle();
                break;
            case MINIGAME:
                miniGame();
                break;
            case MINIGAME2:
                miniGame2();
                break;
            case CHEAT:
                cheat();
                break;
            case PAUSE:
                pause();
                break;
            case WIN:
                win();
                break;
            case LOSE:
                lose();
                break;
        }
    }
}

// state machine main methods setup
void initialize() {
    REG_DISPCTL = MODE0 | SPRITE_ENABLE | BG0_ENABLE | BG1_ENABLE; // Bitwise OR the BG(s) you want to use and Bitwise OR SPRITE_ENABLE if you want to use sprites.

    DMANow(3, spritesPal, SPRITEPALETTE, spritesPalLen / 2);
    DMANow(3, spritesTiles, &CHARBLOCK[4], spritesTilesLen / 2);

    hideSprites();
    DMANow(3, shadowOAM, OAM, 512);

    setupSounds();
    setupInterrupts();

    buttons = BUTTONS;
    oldButtons = 0;

    goToSplash();
}

void goToSplash() {
    REG_DISPCTL = MODE0 | SPRITE_ENABLE | BG1_ENABLE;

    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_4BPP | BG_SIZE_SMALL; // put this every time before a bg dma with the size you want to override
    REG_BG1CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(20) | BG_4BPP | BG_SIZE_LARGE;

    DMANow(3, startscreenPal, PALETTE, 256);
    DMANow(3, startscreenTiles, &CHARBLOCK[1], startscreenTilesLen / 2);
    DMANow(3, startscreenMap, &SCREENBLOCK[20], startscreenMapLen / 2);

    REG_BG0VOFF = 0;
    REG_BG0HOFF = 0;

    REG_BG1VOFF = vOff;
    REG_BG1HOFF = hOff;

    seed = 0;
    cheatActivated = 0;
    shardCount = 0;
    state = SPLASH;

    stopSound();
    playSoundA(pause_song_data, pause_song_length, 1);
}

void splash() {
    seed++;
    waitForVBlank();
    hideSprites();

    if (BUTTON_PRESSED(BUTTON_START)) {
        srand(seed);
        goToInstructions();
    }
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        srand(seed);
        init();
        goToGame();
    }
}

void goToGame() {
    REG_DISPCTL = MODE0 | SPRITE_ENABLE | BG0_ENABLE | BG1_ENABLE;

    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_4BPP | BG_SIZE_SMALL;
    REG_BG1CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(22) | BG_4BPP | BG_SIZE_LARGE;

    DMANow(3, foregroundTiles, &CHARBLOCK[0], foregroundTilesLen / 2);
    DMANow(3, foregroundMap, &SCREENBLOCK[28], foregroundMapLen / 2);

    DMANow(3, BG1Pal, PALETTE, 256);
    DMANow(3, BG1Tiles, &CHARBLOCK[1], BG1TilesLen / 2);
    DMANow(3, BG1Map, &SCREENBLOCK[22], BG1MapLen / 2);

    state = GAME;

    stopSound();
    playSoundA(game_song_data, game_song_length, 1);
}

void game() {
    update();
    draw();
    waitForVBlank(); // lock in fps

    // our shard count at the bottom of the screen
    SCREENBLOCK[28].tilemap[OFFSET(28, 19, 32)] = 12 + shardCount;

    DMANow(3, shadowOAM, OAM, 512);

    if (player.cheat == 1 && cheatActivated == 0) {
        REG_BG0VOFF = 0;
        REG_BG0HOFF = 0;
        prevVoff = vOff;
        prevHoff = hOff;
        hOff = 0;
        vOff = 0;
        cheatActivated = 1;
        cheatRand = rand() % 2;
        goToCheat();
    }

    // game handlers
    if (BUTTON_PRESSED(BUTTON_START)) {
        REG_BG0VOFF = 0;
        REG_BG0HOFF = 0;
        REG_BG1VOFF = 0;
        REG_BG1HOFF = 0;
        prevVoff = vOff;
        prevHoff = hOff;
        hOff = 0;
        vOff = 0;
        prevState = GAME;
        goToPause();
    }
    
    for (int i = 0; i < enemyCount; i++) {
        if (enemies[i].active == 1 && collision(enemies[i].worldCol, enemies[i].worldRow, enemies[i].width, enemies[i].height, player.worldCol, player.worldRow, player.width, player.height) && BUTTON_PRESSED(BUTTON_SELECT)) {
            enemies[i].active = 0;
            prevVoff = vOff;
            prevHoff = hOff;
            playSoundB(hit_sound_data, hit_sound_length, 0);
            initBattleMode();
            goToBattle();
        }
    }
    
    for (int i = 0; i < raccoonCount; i++) {
        if (raccoons[i].hide == 0 && collision(raccoons[i].worldCol, raccoons[i].worldRow, raccoons[i].width, raccoons[i].height, player.worldCol, player.worldRow, player.width, player.height) && BUTTON_PRESSED(BUTTON_SELECT)) {
            raccoons[i].hide = 1;
            prevVoff = vOff;
            prevHoff = hOff;
            playSoundB(hit_sound_data, hit_sound_length, 0);
            if (raccoons[i].num == 0 || raccoons[i].num == 2) {
                initMinigame();
                goToMiniGame();
            } else {
                initMinigame2();
                goToMiniGame2();
            }
        }
    }
    
    if (shardCount >= 3 && collision(finalBoss.worldCol, finalBoss.worldRow, finalBoss.width, finalBoss.height, player.worldCol, player.worldRow, player.width, player.height) && BUTTON_PRESSED(BUTTON_SELECT)) {
        playSoundB(hit_sound_data, hit_sound_length, 0);
        initFinalBattle();
        goToFinalBattle();
    }
}

void goToPause() {
    REG_DISPCTL = MODE0 | SPRITE_ENABLE | BG0_ENABLE | BG1_ENABLE | BG2_ENABLE;

    screenBlock1 = 20; //20
    screenBlock2 = 28;

    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(5) | BG_4BPP | BG_SIZE_SMALL;
    REG_BG1CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(screenBlock1) | BG_4BPP | BG_SIZE_WIDE;
    REG_BG2CNT = BG_CHARBLOCK(2) | BG_SCREENBLOCK(screenBlock2) | BG_4BPP | BG_SIZE_WIDE;

    DMANow(3, pausescreenNEWPal, PALETTE, 256);

    DMANow(3, pauseforegroundTiles, &CHARBLOCK[0], pauseforegroundTilesLen / 2);
    DMANow(3, pauseforegroundMap, &SCREENBLOCK[5], pauseforegroundMapLen / 2);

    DMANow(3, foxscreenTiles, &CHARBLOCK[1], foxscreenTilesLen / 2);
    DMANow(3, foxscreenMap, &SCREENBLOCK[screenBlock1], foxscreenMapLen / 2);

    DMANow(3, pausescreenNEWTiles, &CHARBLOCK[2], pausescreenNEWTilesLen / 2);
    DMANow(3, pausescreenNEWMap, &SCREENBLOCK[screenBlock2], pausescreenNEWMapLen / 2);

    state = PAUSE;

    stopSound();
    playSoundA(pause_song_data, pause_song_length, 1);
}

void pause() {
    hideSprites();
    waitForVBlank();

    // foreground grass
    if (hOff1 > 512) {
        screenBlock1++;
        hOff1 -= 512;
        REG_BG1CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(screenBlock1) | BG_SIZE_WIDE | BG_4BPP;
    }
    if (screenBlock1 < 21) {
        hOff1++;
    } else {
        screenBlock1 = 19;
    }
    REG_BG1HOFF = hOff1 / 2;

    // sky in the background
    if (hOff > 256) {
        screenBlock2++;
        hOff -= 256;
        REG_BG2CNT = BG_CHARBLOCK(2) | BG_SCREENBLOCK(screenBlock2) | BG_SIZE_WIDE | BG_4BPP;
    }
    if (screenBlock2 < 30) {
        hOff++;
    } else {
        screenBlock2 = 27;
    }

    REG_BG2HOFF = hOff;

    DMANow(3, shadowOAM, OAM, 512);

    if (BUTTON_PRESSED(BUTTON_START)) {
        if (prevState == GAME) {
            vOff = prevVoff;
            hOff = prevHoff;
            goToGame();
        } else if (prevState == MINIGAME) {
            goToMiniGame();
        } else if (prevState == MINIGAME2) {
            goToMiniGame2();
        } else if (prevState == CHEAT) {
            goToCheat();
        } else if (prevState == BATTLE) {
            vOff = 0;
            hOff = 0;
            hOff1 = 0;
            goToBattle();
        } else if (prevState == FINAL) {
            vOff = 0;
            hOff = 0;
            hOff1 = 0;
            goToFinalBattle();
        }
    }
    
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        vOff = 0;
        hOff = 0;
        goToSplash();
    }
}

void goToWin() {
    REG_DISPCTL = MODE0 | SPRITE_ENABLE | BG1_ENABLE;
    REG_BG1CNT = BG_SIZE_SMALL | BG_SCREENBLOCK(20) | BG_4BPP | BG_CHARBLOCK(1);

    DMANow(3, winscreenPal, PALETTE, 256);
    DMANow(3, winscreenTiles, &CHARBLOCK[1], winscreenTilesLen / 2);
    DMANow(3, winscreenMap, &SCREENBLOCK[20], winscreenMapLen / 2);

    state = WIN;

    stopSound();
    playSoundA(win_song_data, win_song_length, 1);
}

void win() {
    hideSprites();
    waitForVBlank();

    DMANow(3, shadowOAM, OAM, 512);

    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        vOff = 0;
        hOff = 0;
        goToSplash();
    }
}

void goToLose() {
    REG_DISPCTL = MODE0 | SPRITE_ENABLE | BG1_ENABLE;
    REG_BG1CNT = BG_SIZE_SMALL | BG_SCREENBLOCK(20) | BG_4BPP | BG_CHARBLOCK(1);

    DMANow(3, losescreenPal, PALETTE, 256);
    DMANow(3, losescreenTiles, &CHARBLOCK[1], losescreenTilesLen / 2);
    DMANow(3, losescreenMap, &SCREENBLOCK[20], losescreenMapLen / 2);

    state = LOSE;

    stopSound();
    playSoundA(lose_song_data, lose_song_length, 1);
}

void lose() {
    hideSprites();
    waitForVBlank();

    DMANow(3, shadowOAM, OAM, 512);

    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        vOff = 0;
        hOff = 0;
        goToSplash();
    }
}


// instructions - helper methods for presenting our player guide for how to play the game
void goToInstructions() {
    DMANow(3, instructions1Pal, PALETTE, 256);
    DMANow(3, instructions1Tiles, &CHARBLOCK[1], instructions1TilesLen / 2);
    DMANow(3, instructions1Map, &SCREENBLOCK[20], instructions1MapLen / 2);

    state = INSTRUCT;
}

void instruct() {
    if (BUTTON_PRESSED(BUTTON_LEFT) && state == INSTRUCT) { // back to the start
        goToSplash();
    }
    if (BUTTON_PRESSED(BUTTON_RIGHT)) { // go forward through instructions
        goToInstructions2();
    }
}

void goToInstructions2() {
    DMANow(3, instructions2Pal, PALETTE, 256);
    DMANow(3, instructions2Tiles, &CHARBLOCK[1], instructions2TilesLen / 2);
    DMANow(3, instructions2Map, &SCREENBLOCK[20], instructions2MapLen / 2);

    state = INSTRUCT2;
}

void instruct2() {
    if (BUTTON_PRESSED(BUTTON_LEFT) && state == INSTRUCT2) { // back to first instructions page
        goToInstructions();
    }
    if (BUTTON_PRESSED(BUTTON_RIGHT) && state == INSTRUCT2) { // start game
        goToInstructions3();
    }
}

void goToInstructions3() {
    DMANow(3, instructions3Pal, PALETTE, 256);
    DMANow(3, instructions3Tiles, &CHARBLOCK[1], instructions3TilesLen / 2);
    DMANow(3, instructions3Map, &SCREENBLOCK[20], instructions3MapLen / 2);

    state = INSTRUCT3;
}

void instruct3() {
    if (BUTTON_PRESSED(BUTTON_LEFT) && state == INSTRUCT3) { // back to second instructions page
        goToInstructions2();
    }
    if (BUTTON_PRESSED(BUTTON_START)) { // start game
        // want to have music start here later
        init();
        goToGame();
    }
}


// CHEAT code
void goToCheat() {
    REG_DISPCTL = MODE0 | SPRITE_ENABLE | BG1_ENABLE;
    REG_BG1CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(20) | BG_4BPP | BG_SIZE_SMALL;

    DMANow(3, cheatscreenPal, PALETTE, 256);

    if (cheatRand == 0) {
        DMANow(3, cheatscreenTiles, &CHARBLOCK[1], cheatscreenTilesLen / 2);
        DMANow(3, cheatscreenMap, &SCREENBLOCK[20], cheatscreenMapLen / 2);
    } else if (cheatRand == 1) {
        DMANow(3, cheatscreen2Tiles, &CHARBLOCK[1], cheatscreen2TilesLen / 2);
        DMANow(3, cheatscreen2Map, &SCREENBLOCK[20], cheatscreen2MapLen / 2);
    } else {
        DMANow(3, cheatscreen3Tiles, &CHARBLOCK[1], cheatscreen3TilesLen / 2);
        DMANow(3, cheatscreen3Map, &SCREENBLOCK[20], cheatscreen3MapLen / 2);
    }

    REG_BG1VOFF = 0;
    REG_BG1HOFF = 0;

    hideSprites();

    state = CHEAT;

    pauseSound();
}

void cheat() {
    waitForVBlank();

    DMANow(3, shadowOAM, OAM, 512);

    if (BUTTON_PRESSED(BUTTON_A)) {
        shadowOAM[60].attr0 = 50 | ATTR0_SQUARE;
        shadowOAM[60].attr1 = 90 | ATTR1_LARGE;
        if (cheatRand == 0) {
            shadowOAM[60].attr2 = ATTR2_TILEID(16, 12) | ATTR2_PALROW(0);
        } else if (cheatRand == 1) {
            shadowOAM[60].attr2 = ATTR2_TILEID(24, 12) | ATTR2_PALROW(0);
        } else {
            shadowOAM[60].attr2 = ATTR2_TILEID(16, 20) | ATTR2_PALROW(0);
        }
    }
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        shadowOAM[60].attr0 = ATTR0_HIDE;
        vOff = prevVoff;
        hOff = prevHoff;
        goToGame();
    }
    if (BUTTON_PRESSED(BUTTON_START)) {
        prevState = CHEAT;
        goToPause();
    }
}


// BATTLING
void goToBattle() {
    REG_DISPCTL = MODE0 | SPRITE_ENABLE | BG0_ENABLE | BG1_ENABLE;

    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_4BPP | BG_SIZE_SMALL;
    REG_BG1CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(20) | BG_4BPP | BG_SIZE_SMALL;

    DMANow(3, healsTiles, &CHARBLOCK[0], healsTilesLen / 2);
    DMANow(3, healsMap, &SCREENBLOCK[28], healsMapLen / 2);

    DMANow(3, battlescreenPal, PALETTE, 256);
    DMANow(3, battlescreenTiles, &CHARBLOCK[1], battlescreenTilesLen / 2);
    DMANow(3, battlescreenMap, &SCREENBLOCK[20], battlescreenMapLen / 2);

    REG_BG0VOFF = 0;
    REG_BG0HOFF = 0;
    REG_BG1VOFF = 0;
    REG_BG1HOFF = 0;

    hideSprites();

    state = BATTLE;

    stopSound();
    playSoundA(battle_song_data, battle_song_length, 1);
}

void battle() {
    updateBattleMode();
    drawBattleMode();
    waitForVBlank();

    // our heals at the bottom of the screen
    SCREENBLOCK[28].tilemap[OFFSET(28, 19, 32)] = 11 + player.heal;

    // changing palette for background when it is player or enemy turn
    if (battleState == 0) {
        PALETTE[0] = 0x6A9F;
    } else if (battleState == 1) {
        PALETTE[0] = 0x69F4;
    }

    DMANow(3, shadowOAM, OAM, 512);

    if (BUTTON_PRESSED(BUTTON_START)) {
        prevState = BATTLE;
        goToPause();
    }

    if (playerHeartCount <= 0) {
        hideSprites();
        goToLose();
    }

    if (enemyHeartCount <= 0) {
        shardCount++;
        vOff = prevVoff;
        hOff = prevHoff;
        hideSprites();
        goToGame();
        playSoundB(heal_sound_data, heal_sound_length, 0);
    }
}


// MINI GAMES
void goToMiniGame() {
    REG_DISPCTL = MODE0 | SPRITE_ENABLE | BG1_ENABLE;
    REG_BG1CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(20) | BG_4BPP | BG_SIZE_SMALL;

    DMANow(3, minigame1screenPal, PALETTE, 256);
    DMANow(3, minigame1screenTiles, &CHARBLOCK[1], minigame1screenTilesLen / 2);
    DMANow(3, minigame1screenMap, &SCREENBLOCK[20], minigame1screenMapLen / 2);

    REG_BG1VOFF = 0;
    REG_BG1HOFF = 0;
    vOff = 0;
    hOff = 0;

    hideSprites();

    state = MINIGAME;

    stopSound();
    playSoundA(minigame_song_data, minigame_song_length, 1);
}

void miniGame() {
    updateMinigame();
    drawMinigame();
    waitForVBlank();

    DMANow(3, shadowOAM, OAM, 512);

    if (flowersCollected >= 5) {
        hideSprites();
        player.heal++;
        hOff = prevHoff;
        vOff = prevVoff;
        goToGame();
        playSoundB(heal_sound_data, heal_sound_length, 0);
    }
    if (BUTTON_PRESSED(BUTTON_START)) {
        prevState = MINIGAME;
        goToPause();
    }
    for (int i = 0; i < rockCount; i++) {
        if (collision(rocks[i].worldCol, rocks[i].worldRow, rocks[i].width, rocks[i].height, p1.worldCol, p1.worldRow, p1.width, p1.height)) {
            initMinigame();
            goToMiniGame();
        }
    }
}

void goToMiniGame2() {
    REG_DISPCTL = MODE0 | SPRITE_ENABLE | BG1_ENABLE;
    REG_BG1CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(20) | BG_4BPP | BG_SIZE_SMALL;

    DMANow(3, minigame2screenPal, PALETTE, 256);
    DMANow(3, minigame2screenTiles, &CHARBLOCK[1], minigame2screenTilesLen / 2);
    DMANow(3, minigame2screenMap, &SCREENBLOCK[20], minigame2screenMapLen / 2);

    REG_BG1VOFF = 0;
    REG_BG1HOFF = 0;
    vOff = 0;
    hOff = 0;

    hideSprites();

    state = MINIGAME2;
    stopSound();
    playSoundA(minigame_song_data, minigame_song_length, 1);
}

void miniGame2() {
    updateMinigame2();
    drawMinigame2();
    waitForVBlank();

    shadowOAM[50].attr0 = 0 | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[50].attr1 = 56 | ATTR1_TINY;
    shadowOAM[50].attr2 = ATTR2_TILEID(bounceCount, 29);

    DMANow(3, shadowOAM, OAM, 512);

    if (bounceCount >= 5) {
        hideSprites();
        hOff = prevHoff;
        vOff = prevVoff;
        player.heal++;
        goToGame();
        playSoundB(heal_sound_data, heal_sound_length, 0);
    }
    if (BUTTON_PRESSED(BUTTON_START)) {
        prevState = MINIGAME2;
        goToPause();
    }
}


// FINAL BOSS
void goToFinalBattle() {
    REG_DISPCTL = MODE0 | SPRITE_ENABLE | BG0_ENABLE | BG1_ENABLE;
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_4BPP | BG_SIZE_SMALL;
    REG_BG1CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(20) | BG_4BPP | BG_SIZE_SMALL;

    DMANow(3, finalbattleTimerTiles, &CHARBLOCK[0], finalbattleTimerTilesLen / 2);
    DMANow(3, finalbattleTimerMap, &SCREENBLOCK[28], finalbattleTimerMapLen / 2);

    DMANow(3, finalbattlescreenPal, PALETTE, 256);
    DMANow(3, finalbattlescreenTiles, &CHARBLOCK[1], finalbattlescreenTilesLen / 2);
    DMANow(3, finalbattlescreenMap, &SCREENBLOCK[20], finalbattlescreenMapLen / 2);

    REG_BG1VOFF = 0;
    REG_BG1HOFF = 0;
    vOff = 0;
    hOff = 0;

    hideSprites();

    state = FINAL;

    stopSound();
    playSoundA(finalbattle_song_data, finalbattle_song_length, 1);
}

void finalBattle() {
    updateFinalBattle();
    drawFinalBattle();
    waitForVBlank();

    // changing palette for background when it is player or enemy turn
    if (battleState == 0) {
        PALETTE[0] = 0x6A9F;
    } else if (battleState == 1) {
        PALETTE[0] = 0x69F4;
    }

    DMANow(3, shadowOAM, OAM, 512);

    if (BUTTON_PRESSED(BUTTON_START)) {
        prevState = FINAL;
        goToPause();
    }

    if (playerHeartCount <= 0) {
        hideSprites();
        goToLose();
    }

    if (enemyHeartCount <= 0) {
        hideSprites();
        goToWin();
    }
}

