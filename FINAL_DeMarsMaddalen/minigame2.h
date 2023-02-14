#include "mode0.h"
#include "game.h"

// variables
extern OBJ_ATTR shadowOAM[128];
extern SPRITE paddle;
extern SPRITE bead;
extern SPRITE instruction2;
extern int bounceCount;

// prototypes
void initMinigame2();
void updateMinigame2();
void drawMinigame2();

void initPaddle();
void updatePaddle();
void drawPaddle();

void initBead();
void updateBead();
void drawBead();