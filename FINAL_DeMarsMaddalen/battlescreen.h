
//{{BLOCK(battlescreen)

//======================================================================
//
//	battlescreen, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 58 tiles (t|f reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 1856 + 2048 = 4416
//
//	Time-stamp: 2022-04-13, 00:41:28
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_BATTLESCREEN_H
#define GRIT_BATTLESCREEN_H

#define battlescreenTilesLen 1856
extern const unsigned short battlescreenTiles[928];

#define battlescreenMapLen 2048
extern const unsigned short battlescreenMap[1024];

#define battlescreenPalLen 512
extern const unsigned short battlescreenPal[256];

#endif // GRIT_BATTLESCREEN_H

//}}BLOCK(battlescreen)
