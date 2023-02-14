#include "mode0.h"

// Constants
#define MAPHEIGHT 512
#define MAPWIDTH 512
#define enemyCount 3
#define raccoonCount 4

// Variables
extern int hOff;
extern int vOff;
extern int hOff1;
extern OBJ_ATTR shadowOAM[128];
extern SPRITE player;
extern SPRITE enemies[enemyCount];
extern SPRITE raccoons[raccoonCount];
extern SPRITE finalBoss;


// Prototypes
void init();
void update();
void draw();

void initPlayer();
void updatePlayer();
void animatePlayer();
void drawPlayer();

void initEnemies();
void updateEnemies();
void animateEnemies();
void drawEnemies();

void initRaccoons();
void updateRaccoons();
void drawRaccoons();

void initFinalBoss();
void updateFinalBoss();
void drawFinalBoss();


// Collision function prototypes
int collisionCheck(unsigned char *collisionMap, int mapWidth, int col, int row, int width, int height, 
        int colShift, int rowShift);
int collisionCheckAllPixels(unsigned char *collisionMap, int mapWidth, int col, int row, int width, 
        int height, int colShift, int rowShift);