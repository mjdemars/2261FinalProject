
//{{BLOCK(cheatscreen)

//======================================================================
//
//	cheatscreen, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 98 tiles (t|f reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 3136 + 2048 = 5696
//
//	Time-stamp: 2022-04-20, 00:56:09
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_CHEATSCREEN_H
#define GRIT_CHEATSCREEN_H

#define cheatscreenTilesLen 3136
extern const unsigned short cheatscreenTiles[1568];

#define cheatscreenMapLen 2048
extern const unsigned short cheatscreenMap[1024];

#define cheatscreenPalLen 512
extern const unsigned short cheatscreenPal[256];

#endif // GRIT_CHEATSCREEN_H

//}}BLOCK(cheatscreen)
