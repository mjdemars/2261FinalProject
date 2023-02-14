
//{{BLOCK(startscreen)

//======================================================================
//
//	startscreen, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 176 tiles (t|f reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 5632 + 2048 = 8192
//
//	Time-stamp: 2022-04-25, 20:51:07
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_STARTSCREEN_H
#define GRIT_STARTSCREEN_H

#define startscreenTilesLen 5632
extern const unsigned short startscreenTiles[2816];

#define startscreenMapLen 2048
extern const unsigned short startscreenMap[1024];

#define startscreenPalLen 512
extern const unsigned short startscreenPal[256];

#endif // GRIT_STARTSCREEN_H

//}}BLOCK(startscreen)
