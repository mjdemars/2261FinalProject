#include "mode0.h"

// Constants
#define numHearts 5

// Variables
extern int hOff;
extern int vOff;
extern OBJ_ATTR shadowOAM[128];
extern SPRITE fox;
extern SPRITE spirit;
extern SPRITE shaman;
extern SPRITE playerHearts[numHearts];
extern SPRITE enemyHearts[numHearts];
extern SPRITE popUp;
extern int playerHeartCount;
extern int enemyHeartCount;
extern int battleState;
extern int foxHit;
extern int enemyHit;
extern int time_s;
extern int instructions3;

// Prototypes
void initBattleMode();
void updateBattleMode();
void drawBattleMode();

void initFinalBattle();
void updateFinalBattle();
void drawFinalBattle();

void initFox();
void updateFox();
void animateFox();
void drawFox();

void initFox2();
void updateFox2();
void drawFox2();

void initSpirit();
void updateSpirit();
void animateSpirit();
void drawSpirit();

void initShaman();
void updateShaman();
void animateShaman();
void drawShaman();

void initHearts();
void animateHearts();
void drawHearts();

void initPopUp();
void drawPopUp();

void battleInterruptHandler(void);
void enableBattleInterrupts(void);
void setupBattleInterrupts(void);

void drawTimer();
void drawTimer2();

// Collision function prototypes
int collisionCheck(unsigned char *collisionMap, int mapWidth, int col, int row, int width, int height, 
        int colShift, int rowShift);
int collisionCheckAllPixels(unsigned char *collisionMap, int mapWidth, int col, int row, int width, 
        int height, int colShift, int rowShift);