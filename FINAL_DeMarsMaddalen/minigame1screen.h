
//{{BLOCK(minigame1screen)

//======================================================================
//
//	minigame1screen, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 1 tiles (t|f reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 32 + 2048 = 2592
//
//	Time-stamp: 2022-04-10, 01:46:57
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_MINIGAME1SCREEN_H
#define GRIT_MINIGAME1SCREEN_H

#define minigame1screenTilesLen 32
extern const unsigned short minigame1screenTiles[16];

#define minigame1screenMapLen 2048
extern const unsigned short minigame1screenMap[1024];

#define minigame1screenPalLen 512
extern const unsigned short minigame1screenPal[256];

#endif // GRIT_MINIGAME1SCREEN_H

//}}BLOCK(minigame1screen)
