
//{{BLOCK(foxscreen)

//======================================================================
//
//	foxscreen, 1024x256@4, 
//	+ palette 256 entries, not compressed
//	+ 538 tiles (t|f reduced) not compressed
//	+ regular map (in SBBs), not compressed, 128x32 
//	Total size: 512 + 17216 + 8192 = 25920
//
//	Time-stamp: 2022-04-21, 02:30:18
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_FOXSCREEN_H
#define GRIT_FOXSCREEN_H

#define foxscreenTilesLen 17216
extern const unsigned short foxscreenTiles[8608];

#define foxscreenMapLen 8192
extern const unsigned short foxscreenMap[4096];

#define foxscreenPalLen 512
extern const unsigned short foxscreenPal[256];

#endif // GRIT_FOXSCREEN_H

//}}BLOCK(foxscreen)
