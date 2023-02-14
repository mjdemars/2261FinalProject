
//{{BLOCK(heals)

//======================================================================
//
//	heals, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 33 tiles (t|f reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 1056 + 2048 = 3616
//
//	Time-stamp: 2022-04-21, 17:29:31
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_HEALS_H
#define GRIT_HEALS_H

#define healsTilesLen 1056
extern const unsigned short healsTiles[528];

#define healsMapLen 2048
extern const unsigned short healsMap[1024];

#define healsPalLen 512
extern const unsigned short healsPal[256];

#endif // GRIT_HEALS_H

//}}BLOCK(heals)
