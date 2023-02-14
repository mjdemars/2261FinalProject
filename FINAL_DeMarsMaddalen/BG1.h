
//{{BLOCK(BG1)

//======================================================================
//
//	BG1, 512x512@4, 
//	+ palette 256 entries, not compressed
//	+ 847 tiles (t|f reduced) not compressed
//	+ regular map (in SBBs), not compressed, 64x64 
//	Total size: 512 + 27104 + 8192 = 35808
//
//	Time-stamp: 2022-04-25, 16:23:29
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_BG1_H
#define GRIT_BG1_H

#define BG1TilesLen 27104
extern const unsigned short BG1Tiles[13552];

#define BG1MapLen 8192
extern const unsigned short BG1Map[4096];

#define BG1PalLen 512
extern const unsigned short BG1Pal[256];

#endif // GRIT_BG1_H

//}}BLOCK(BG1)
