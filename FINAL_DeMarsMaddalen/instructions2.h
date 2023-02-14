
//{{BLOCK(instructions2)

//======================================================================
//
//	instructions2, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 300 tiles (t|f reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 9600 + 2048 = 12160
//
//	Time-stamp: 2022-04-26, 03:20:47
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_INSTRUCTIONS2_H
#define GRIT_INSTRUCTIONS2_H

#define instructions2TilesLen 9600
extern const unsigned short instructions2Tiles[4800];

#define instructions2MapLen 2048
extern const unsigned short instructions2Map[1024];

#define instructions2PalLen 512
extern const unsigned short instructions2Pal[256];

#endif // GRIT_INSTRUCTIONS2_H

//}}BLOCK(instructions2)
