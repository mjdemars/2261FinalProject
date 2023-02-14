#include <stdlib.h>
#include "mode0.h"
#include "game.h"
#include "collision1.h"

// variables
int hOff;
int vOff;
int hOff1;
OBJ_ATTR shadowOAM[128];
SPRITE player;
SPRITE enemies[enemyCount];
SPRITE raccoons[raccoonCount];
SPRITE finalBoss;

int shadowOAMcounter;

// collision mapping
unsigned char* collisionMap = (unsigned char *) collision1Bitmap;

enum {LEFT, RIGHT, DOWN, UP}; // animation states

// game mechanics
void init() {
    vOff = 0;
    hOff = 0;
    hOff1 = 0;
    shadowOAMcounter = 0;

    initPlayer();
    initEnemies();
    initRaccoons();
    initFinalBoss();
}

void update() {
	updatePlayer();

    for (int i = 0; i < enemyCount; i++) {
        if (enemies[i].active) {
            updateEnemies(&enemies[i]);
        }
    }
    updateRaccoons();
    updateFinalBoss();
}

void draw() {
    shadowOAMcounter = 0;

    drawPlayer();

    for (int i = 0; i < enemyCount; i++) {
        drawEnemies(&enemies[i]);
    }

    for (int i = 0; i < raccoonCount; i++) {
        drawRaccoons(&raccoons[i]);
    }

    drawFinalBoss();

    REG_BG1HOFF = hOff;
    REG_BG1VOFF = vOff;

    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 512);
}


// player mechs
void initPlayer() {
    player.width = 16;
    player.height = 16;
    player.rdel = 1;
    player.cdel = 1;
    player.worldRow = 1;
    player.worldCol = 1;
    player.aniCounter = 0;
    player.curFrame = 0;
    player.numFrames = 4;
    player.aniState = RIGHT;
    player.heal = 0;
    player.cheat = 0;
}

void updatePlayer() {
    // button controls
    if (BUTTON_HELD(BUTTON_LEFT)) {
        if (player.worldCol > 0 && collisionCheck(collisionMap, MAPWIDTH, player.worldCol, player.worldRow, player.width, player.height, -player.cdel, 0)) {
            player.worldCol -= player.cdel;
            if (hOff > 0 && ((player.worldCol - hOff) < SCREENWIDTH / 2)) {
                if (player.cheat == 0) {
                    hOff--;
                } else {
                    hOff -= 2;
                }
            }
        }
    }
    if (BUTTON_HELD(BUTTON_RIGHT)) {
        if (player.worldCol + player.width < MAPWIDTH && collisionCheck(collisionMap, MAPWIDTH, player.worldCol, player.worldRow, player.width, player.height, player.cdel, 0)) {
            player.worldCol += player.cdel;
            if ((hOff < MAPWIDTH - SCREENWIDTH) && ((player.worldCol - hOff) > SCREENWIDTH / 2)) {
                if (player.cheat == 0) {
                    hOff++;
                } else {
                    hOff += 2;
                }    
            }
        }
    }
    if (BUTTON_HELD(BUTTON_UP)) {
        if (player.worldRow > 0 && collisionCheck(collisionMap, MAPWIDTH, player.worldCol, player.worldRow, player.width, player.height, 0, -player.rdel)) {
            player.worldRow -= player.rdel;
            if (vOff > 0 && ((player.worldRow - vOff) <= SCREENHEIGHT / 2)) {
                if (player.cheat == 0) {
                    vOff--;
                } else {
                    vOff -= 2;
                }
            }
        }
    }
    if (BUTTON_HELD(BUTTON_DOWN)) {
        if (player.worldRow + player.height < MAPHEIGHT && collisionCheck(collisionMap, MAPWIDTH, player.worldCol, player.worldRow, player.width, player.height, 0, player.rdel)) {
            player.worldRow += player.rdel;
            if ((vOff < MAPHEIGHT - SCREENHEIGHT) && ((player.worldRow - vOff) > SCREENHEIGHT / 2)) {
                if (player.cheat == 0) {
                    vOff++;
                } else {
                    vOff += 2;
                }
            }
        }
    }

    // cheat
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        if (collisionCheck(collisionMap, MAPWIDTH, player.worldCol, player.worldRow, player.width, player.height, 0, 0) == 1) {
            player.cheat = 1;
            player.heal = 5;
            player.rdel = 2;
            player.cdel = 2;
        }
    }

    animatePlayer();
}

void animatePlayer() {
    if (player.aniCounter % 12 == 0) {
        if (player.curFrame < player.numFrames - 1) {
            player.curFrame++;
        } else {
            player.curFrame = 0;
        }
    }

    // sprite states
    if (BUTTON_HELD(BUTTON_UP)) {
        player.aniState = UP;
        player.aniCounter++;
    } else if (BUTTON_HELD(BUTTON_DOWN)) {
        player.aniState = DOWN;
        player.aniCounter++;
    } else if (BUTTON_HELD(BUTTON_LEFT)) {
        player.aniState = LEFT;
        player.aniCounter++;
    } else if (BUTTON_HELD(BUTTON_RIGHT)) {
        player.aniState = RIGHT;
        player.aniCounter++;
    } else {
        player.curFrame = 0;
    }
}

void drawPlayer() {
    shadowOAM[shadowOAMcounter].attr0 = (ROWMASK & (player.worldRow - vOff)) | ATTR0_SQUARE;
    shadowOAM[shadowOAMcounter].attr1 = (COLMASK & (player.worldCol - hOff)) | ATTR1_SMALL;
    shadowOAM[shadowOAMcounter].attr2 = ATTR2_TILEID(player.aniState * 2, player.curFrame * 2) | ATTR2_PALROW(0);
    shadowOAMcounter++;
}


// evil spirits towers
void initEnemies() {
    for (int i = 0; i < enemyCount; i++) {
        if (i == 0) {
            enemies[i].worldCol = 170;
            enemies[i].worldRow = -1;
        } else if (i == 1) {
            enemies[i].worldCol = 450;
            enemies[i].worldRow = 180;
        } else if (i == 2) {
            enemies[i].worldCol = 40;
            enemies[i].worldRow = 440;
        }
        enemies[i].width = 32;
        enemies[i].height = 32;
        enemies[i].aniCounter = 0;
        enemies[i].curFrame = 0;
        enemies[i].numFrames = 2;
        enemies[i].active = 1;
        enemies[i].num = i;
    }
}

void updateEnemies(SPRITE *e) {
    if (e->aniCounter % 10 == 0) {
        if (e->curFrame < e->numFrames - 1) {
            e->curFrame++;
        } else {
            e->curFrame = 0;
        }
    }
    e->aniCounter++; 
}

void drawEnemies(SPRITE *e) {
    if ((e->worldRow + e->height - vOff >= 0) 
            && (e->worldRow - vOff <= SCREENHEIGHT)
            && (e->worldCol + e->width - hOff >= 0) 
            && (e->worldCol - hOff <= SCREENWIDTH)) {
        shadowOAM[shadowOAMcounter].attr0 = (ROWMASK & (e->worldRow - vOff)) | ATTR0_SQUARE;
        shadowOAM[shadowOAMcounter].attr1 = (COLMASK & (e->worldCol - hOff)) | ATTR1_MEDIUM;
        shadowOAM[shadowOAMcounter].attr2 = ATTR2_TILEID((e->curFrame * 4), 8) | ATTR2_PALROW(0);
    }
    shadowOAMcounter++;
}


// raccoons that give healing
void initRaccoons() {
    for (int i = 0; i < raccoonCount; i++) {
        if (i == 0) {
            raccoons[i].worldCol = 15;
            raccoons[i].worldRow = 120;
        } else if (i == 1) {
            raccoons[i].worldCol = 180;
            raccoons[i].worldRow = 250;
        } else if (i == 2) {
            raccoons[i].worldCol = 350;
            raccoons[i].worldRow = 350;
        } else if (i == 3) {
            raccoons[i].worldCol = 430;
            raccoons[i].worldRow = 30;
        }
        raccoons[i].width = 16;
        raccoons[i].height = 16;
        raccoons[i].hide = 0;
        raccoons[i].curFrame = 0;
        raccoons[i].numFrames = 2;
        raccoons[i].aniCounter = 0;
        raccoons[i].num = i;
    }
}

void updateRaccoons() {
    for (int i = 0; i < raccoonCount; i++) {
        if (raccoons[i].aniCounter % 10 == 0) {
        if (raccoons[i].curFrame < raccoons[i].numFrames - 1) {
            raccoons[i].curFrame++;
        } else {
            raccoons[i].curFrame = 0;
        }
    }
    raccoons[i].aniCounter++;
    }
}

void drawRaccoons(SPRITE *r) {
    if ((r->worldRow + r->height - vOff >= 0)
        && (r->worldRow - vOff <= SCREENHEIGHT)
        && (r->worldCol + r->width - hOff >= 0)
        && (r->worldCol - hOff <= SCREENWIDTH)) {
        if (r->hide == 1) {
            shadowOAM[shadowOAMcounter].attr0 = ATTR0_HIDE;
        } else {
            shadowOAM[shadowOAMcounter].attr0 = (ROWMASK & (r->worldRow - vOff)) | ATTR0_SQUARE;
            shadowOAM[shadowOAMcounter].attr1 = (COLMASK & (r->worldCol  - hOff)) | ATTR1_SMALL;
            if (r->num == 0 || r->num == 3) {
                shadowOAM[shadowOAMcounter].attr2 = ATTR2_TILEID((r->curFrame * 2), 22) | ATTR2_PALROW(0);
            } else if (r->num == 1) {
                shadowOAM[shadowOAMcounter].attr2 = ATTR2_TILEID((r->curFrame * 2) + 4, 22) | ATTR2_PALROW(0);
            } else if (r->num == 2) {
                shadowOAM[shadowOAMcounter].attr2 = ATTR2_TILEID((r->curFrame * 2) + 8, 22) | ATTR2_PALROW(0);
            }
        }
    }
    shadowOAMcounter++;
}


// final boss tower - bottom right of screen
void initFinalBoss() {
    finalBoss.worldCol = 430;
    finalBoss.worldRow = 450;
    finalBoss.height = 32;
    finalBoss.width = 32;
    finalBoss.aniCounter = 0;
    finalBoss.curFrame = 0;
    finalBoss.numFrames = 4;
}

void updateFinalBoss() {
    if (finalBoss.aniCounter % 10 == 0) {
        if (finalBoss.curFrame < finalBoss.numFrames - 1) {
            finalBoss.curFrame++;
        } else {
            finalBoss.curFrame = 0;
        }
    }
    finalBoss.aniCounter++;
}

void drawFinalBoss() {
    if ((finalBoss.worldRow + finalBoss.height - vOff >= 0) 
            && (finalBoss.worldRow - vOff <= SCREENHEIGHT)
            && (finalBoss.worldCol + finalBoss.width - hOff >= 0) 
            && (finalBoss.worldCol - hOff <= SCREENWIDTH)) {
        shadowOAM[shadowOAMcounter].attr0 = (ROWMASK & (finalBoss.worldRow - vOff)) | ATTR0_SQUARE;
        shadowOAM[shadowOAMcounter].attr1 = (COLMASK & (finalBoss.worldCol - hOff)) | ATTR1_MEDIUM;
        shadowOAM[shadowOAMcounter].attr2 = ATTR2_TILEID((finalBoss.curFrame * 4) + 8, 8) | ATTR2_PALROW(0);
    }
    shadowOAMcounter++;
}

