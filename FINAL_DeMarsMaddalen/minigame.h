#include "mode0.h"
#include "game.h"

// macros
#define rockCount 8
#define flowerCount 5
#define bulletCount 2

// variables
extern OBJ_ATTR shadowOAM[128];
extern SPRITE p1;
extern SPRITE rocks[rockCount];
extern SPRITE flowers[flowerCount];
extern SPRITE bullets[bulletCount];
extern SPRITE instructions;
extern int flowersCollected;

void initMinigame();
void updateMinigame();
void drawMinigame();

void initP1();
void updateP1();
void drawP1();

void initRocks();
void updateRocks();
void drawRocks();

void initFlowers();
void updateFlowers();
void drawFlowers();

void initBullets();
void updateBullets();
void fireBullets();
void drawBullets();

void initInstruct();
void updateInstruct();
void drawInstruct();