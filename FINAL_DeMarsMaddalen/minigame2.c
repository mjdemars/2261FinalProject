#include <stdlib.h>
#include "mode0.h"
#include "game.h"
#include "minigame2.h"

// variables
OBJ_ATTR shadowOAM[128];
SPRITE paddle;
SPRITE bead;
int instructions2;
int bounceCount;

enum {LEFT, RIGHT};

int shadowOAMcounter;

void initMinigame2() {
    bounceCount = 0;
    instructions2 = 1;
    initPaddle();
    initBead();
}

void updateMinigame2() {
    if (instructions2 == 0) {
        updatePaddle();
        updateBead();
    }

    if (BUTTON_PRESSED(BUTTON_L)) {
        instructions2 = 0;
    }
}

void drawMinigame2() {
    shadowOAMcounter = 0;
    if (instructions2 == 0) {
        drawPaddle();
        drawBead();
    }
    
    // instructions to reference
    if (instructions2 == 0) {
        shadowOAM[shadowOAMcounter].attr0 = ATTR0_HIDE;
    } else {
        shadowOAM[shadowOAMcounter].attr0 = 50 | ATTR0_SQUARE;
        shadowOAM[shadowOAMcounter].attr1 = 90 | ATTR1_LARGE;
        shadowOAM[shadowOAMcounter].attr2 = ATTR2_TILEID(24, 20) | ATTR2_PALROW(0);
    }
    shadowOAMcounter++;
}

// paddle things - in the image of a fox <3
void initPaddle() {
    paddle.width = 16;
    paddle.height = 16;
    paddle.worldCol = (SCREENWIDTH / 2) - (paddle.width / 2);
    paddle.worldRow = SCREENHEIGHT - paddle.height - 1;
    paddle.aniState = LEFT;
}

void updatePaddle() {
    if (BUTTON_HELD(BUTTON_LEFT) && paddle.worldCol > 0) {
        paddle.aniState = LEFT;
        paddle.worldCol--;
    }
    if (BUTTON_HELD(BUTTON_RIGHT) && paddle.worldCol < SCREENWIDTH - paddle.width - 1) {
        paddle.aniState = RIGHT;
        paddle.worldCol++;
    }
    if (collision(bead.worldCol, bead.worldRow, bead.width, bead.height, paddle.worldCol, paddle.worldRow, paddle.width, paddle.height) && bead.worldRow <= SCREENHEIGHT - (paddle.height + bead.height - 1)) {
        bead.rdel *= -1;
        bounceCount++;
    }
}

void drawPaddle() {
    shadowOAM[shadowOAMcounter].attr0 = paddle.worldRow | ATTR0_SQUARE;
    shadowOAM[shadowOAMcounter].attr1 = paddle.worldCol | ATTR1_SMALL;
    if (paddle.aniState == LEFT) {
        shadowOAM[shadowOAMcounter].attr2 = ATTR2_TILEID(10, 2) | ATTR2_PALROW(0);
    } else {
        shadowOAM[shadowOAMcounter].attr2 = ATTR2_TILEID(12, 2) | ATTR2_PALROW(0);
    }
    shadowOAMcounter++;
}

// the "ball" of the pong game
void initBead() {
    bead.width = 16;
    bead.height = 16;
    bead.worldCol = rand() % 200 + 20;
    bead.worldRow = 1;
    bead.rdel = 1;
    bead.cdel = 1;
}

void updateBead() {
    if (bead.worldRow < 1) {
        bead.rdel *= -1;
    }
    if (bead.worldCol < 1 || bead.worldCol >= SCREENWIDTH - bead.width - 1) {
        bead.cdel *= -1;
    }
    if (bead.worldRow > SCREENHEIGHT - 1) {
        initMinigame2();
    }

    bead.worldRow += bead.rdel;
    bead.worldCol += bead.cdel;
}

void drawBead() {
    shadowOAM[shadowOAMcounter].attr0 = bead.worldRow | ATTR0_SQUARE;
    shadowOAM[shadowOAMcounter].attr1 = bead.worldCol | ATTR1_SMALL;
    shadowOAM[shadowOAMcounter].attr2 = ATTR2_TILEID(8, 3) | ATTR2_PALROW(0);
    shadowOAMcounter++;
}

