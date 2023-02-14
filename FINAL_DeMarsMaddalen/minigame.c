#include <stdlib.h>
#include "mode0.h"
#include "minigame.h"
#include "game.h"

// collect 3 cherry blossoms falling without being hit by a rock - shoot rocks using button B

// variables
OBJ_ATTR shadowOAM[128];
SPRITE p1;
SPRITE rocks[rockCount];
SPRITE flowers[flowerCount];
SPRITE bullets[bulletCount];
SPRITE instructions;
int flowersCollected;

int shadowOAMcounter;

enum {LEFT, RIGHT};

void initMinigame() {
    flowersCollected = 0;
    shadowOAMcounter = 0;
    
    initInstruct();
    initP1();
    initBullets();
    initFlowers();
    initRocks();
}

void updateMinigame() {
    updateInstruct();
    updateP1();
    if (instructions.hide == 1) {
        for (int i = 0; i < bulletCount; i++) {
            updateBullets(&bullets[i]);
        }
        for (int i = 0; i < flowerCount; i++) {
            updateFlowers(&flowers[i]);
        }
        for (int i = 0; i < rockCount; i++) {
            updateRocks(&rocks[i]);
        }
    }
}

void drawMinigame() {
    drawInstruct();

    shadowOAMcounter = 0;

    drawP1();

    if (instructions.hide == 1) {
        for (int i = 0; i < bulletCount; i++) {
            drawBullets(&bullets[i]);
        }
        for (int i = 0; i < flowerCount; i++) {
            drawFlowers(&flowers[i]);
        }
        for (int i = 0; i < rockCount; i++) {
            drawRocks(&rocks[i]);
        }
    }

    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 512);
}


// fox functions
void initP1() {
    p1.worldRow = 140;
    p1.worldCol = 112;
    p1.cdel = 1;
    p1.width = 16;
    p1.height = 16;
    p1.aniState = LEFT;
}

void updateP1() {
    if (BUTTON_HELD(BUTTON_LEFT) && p1.worldCol >= p1.cdel) {
        p1.aniState = LEFT;
        p1.worldCol -= p1.cdel;
    }
    if (BUTTON_HELD(BUTTON_RIGHT) && p1.worldCol + p1.width - 1 < SCREENWIDTH - p1.cdel) {
        p1.aniState = RIGHT;
        p1.worldCol += p1.cdel;
    }
    if (BUTTON_PRESSED(BUTTON_B)) {
        fireBullets();
    }
}

void drawP1() {
    if (p1.aniState == LEFT) {
        shadowOAM[shadowOAMcounter].attr0 = p1.worldRow | ATTR0_SQUARE;
        shadowOAM[shadowOAMcounter].attr1 = p1.worldCol | ATTR1_SMALL;
        shadowOAM[shadowOAMcounter].attr2 = ATTR2_TILEID(10, 0) | ATTR2_PALROW(0);
    } else {
        shadowOAM[shadowOAMcounter].attr0 = p1.worldRow | ATTR0_SQUARE;
        shadowOAM[shadowOAMcounter].attr1 = p1.worldCol | ATTR1_SMALL;
        shadowOAM[shadowOAMcounter].attr2 = ATTR2_TILEID(12, 0) | ATTR2_PALROW(0);
    }
    shadowOAMcounter++;
}


// fox bullet functions
void initBullets() {
	for (int i = 0; i < bulletCount; i++) {
		bullets[i].worldRow = -(bullets[i].height);
        bullets[i].worldCol = 0;
        bullets[i].height = 8;
		bullets[i].width = 8;
		bullets[i].rdel = 2;
		bullets[i].active = 0;
	}
}

void fireBullets() {
	for (int i = 0; i < bulletCount; i++) {
		if (!bullets[i].active) {
			bullets[i].worldRow = p1.worldRow + 8;
			bullets[i].worldCol = p1.worldCol + 8;
			bullets[i].active = 1; 
			bullets[i].hide = 0;
			break;
		}
	}
}

void updateBullets(SPRITE* b) {
	if (b->active) {
		if (b->worldRow + b->height > 0) {
			b->worldRow -= b->rdel;
		}
		if (b->worldRow < 0) {
			b->active = 0;
		}
	}
}

void drawBullets(SPRITE* b) {
    if (b->active == 1) {
        shadowOAM[shadowOAMcounter].attr0 = b->worldRow | ATTR0_SQUARE;
        shadowOAM[shadowOAMcounter].attr1 = b->worldCol | ATTR1_TINY;
        shadowOAM[shadowOAMcounter].attr2 = ATTR2_TILEID(8, 2) | ATTR2_PALROW(0);
    } else {
        shadowOAM[shadowOAMcounter].attr0 = ATTR0_HIDE;
    }
    shadowOAMcounter++;
}


// flowers - to be collected
void initFlowers() {
    for (int i = 0; i < flowerCount; i++) {
        flowers[i].active = 1;
        flowers[i].width = 8;
        flowers[i].height = 8;
        flowers[i].worldRow = 0;
        flowers[i].worldCol = rand() % 230;
        flowers[i].rdel = rand() % 2 + 1;
    }
}

void updateFlowers(SPRITE *f) {
    if (f->active) {
        if (f->worldRow < SCREENHEIGHT - f->height - 1) {
            f->worldRow += f->rdel;
        } else {
            f->worldRow = 0;
            f->worldCol = rand() % 230;
        }
        if (collision(f->worldCol, f->worldRow, f->width, f->height, p1.worldCol, p1.worldRow, p1.width, p1.height)) {
            f->active = 0;
            flowersCollected += 1;
        }
    }

    for (int i = 0; i < flowerCount; i++) {
        if (f->worldRow == 0 && collision(flowers[i].worldCol, flowers[i].worldRow, flowers[i].width, flowers[i].height, f->worldCol, f->worldRow, f->width, f->height)) {
            f->worldCol = rand() % 230;
        }
    }
}

void drawFlowers(SPRITE *f) {
    if (f->active == 1) {
        shadowOAM[shadowOAMcounter].attr0 = f->worldRow | ATTR0_SQUARE;
        shadowOAM[shadowOAMcounter].attr1 = f->worldCol | ATTR1_TINY;
        shadowOAM[shadowOAMcounter].attr2 = ATTR2_TILEID(0, 24) | ATTR2_PALROW(0);
    } else {
        shadowOAM[shadowOAMcounter].attr0 = ATTR0_HIDE;
    }
    shadowOAMcounter++;
}


// rocks - falling from the sky - get hit and die
void initRocks() {
    for (int i = 0; i < rockCount; i++) {
        rocks[i].active = 1;
        rocks[i].width = 8;
        rocks[i].height = 8;
        rocks[i].worldRow = 0;
        rocks[i].worldCol = rand() % 230;
        rocks[i].rdel = rand() % 2 + 1;
    }
}

void updateRocks(SPRITE *r) {
    if (r->active) {
        if (r->worldRow < SCREENHEIGHT - r->height - 1) {
            r->worldRow += r->rdel;
        } else {
            r->worldRow = 0;
            r->worldCol = rand() % 230;
        }
    }

    for (int i = 0; i < rockCount; i++) {
        if (r->worldRow == 0 && collision(rocks[i].worldCol, rocks[i].worldRow, rocks[i].width, rocks[i].height, r->worldCol, r->worldRow, r->width, r->height)) {
            r->worldCol = rand() % 230;
        }    
    }
    for (int i = 0; i < bulletCount; i++) {
        if (collision(r->worldCol, r->worldRow, r->width, r->height, bullets[i].worldCol, bullets[i].worldRow, bullets[i].width, bullets[i].height)) {
            r->active = 0;
            bullets[i].active = 0;
            bullets[i].worldRow = 0;
        }
    }
}

void drawRocks(SPRITE *r) {
    if (r->active == 1) {
        shadowOAM[shadowOAMcounter].attr0 = r->worldRow | ATTR0_SQUARE;
        shadowOAM[shadowOAMcounter].attr1 = r->worldCol | ATTR1_TINY;
        shadowOAM[shadowOAMcounter].attr2 = ATTR2_TILEID(0, 25) | ATTR2_PALROW(0);
    } else {
        shadowOAM[shadowOAMcounter].attr0 = ATTR0_HIDE;
    }
    shadowOAMcounter++;
}


// instructions pop-up
void initInstruct() {
    instructions.worldRow = 50;
    instructions.worldCol = 90;
    instructions.height = 64;
    instructions.width = 64;
    instructions.active = 0;
    instructions.hide = 0;
}

void updateInstruct() {
    if (BUTTON_PRESSED(BUTTON_L)) {
        instructions.hide = 1;
    }
}

void drawInstruct() {
    if (instructions.hide == 1) {
        shadowOAM[shadowOAMcounter].attr0 = ATTR0_HIDE;
    } else {
        shadowOAM[shadowOAMcounter].attr0 = instructions.worldRow | ATTR0_SQUARE;
        shadowOAM[shadowOAMcounter].attr1 = instructions.worldCol | ATTR1_LARGE;
        shadowOAM[shadowOAMcounter].attr2 = ATTR2_TILEID(8, 12) | ATTR2_PALROW(0);
    }
    shadowOAMcounter++;  
}