
//{{BLOCK(losescreen)

//======================================================================
//
//	losescreen, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 116 tiles (t|f reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 3712 + 2048 = 6272
//
//	Time-stamp: 2022-04-03, 22:03:55
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_LOSESCREEN_H
#define GRIT_LOSESCREEN_H

#define losescreenTilesLen 3712
extern const unsigned short losescreenTiles[1856];

#define losescreenMapLen 2048
extern const unsigned short losescreenMap[1024];

#define losescreenPalLen 512
extern const unsigned short losescreenPal[256];

#endif // GRIT_LOSESCREEN_H

//}}BLOCK(losescreen)
