
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

const unsigned short losescreenTiles[1856] __attribute__((aligned(4)))=
{
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0001,0x1000,0x0010,0x0000,0x0001,0x0000,0x0000,
	0x0000,0x0101,0x0000,0x0010,0x0000,0x0101,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x1000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0001,0x0000,0x0010,0x0000,0x0001,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0101,0x0000,0x0010,0x0000,0x0101,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x3330,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x3330,0x0300,
	0x3300,0x0300,0x3000,0x0030,0x3000,0x0033,0x3000,0x0033,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x3000,0x3333,
	0x3300,0x3000,0x3300,0x3000,0x3300,0x3000,0x3300,0x3000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0003,0x0000,0x0003,0x0000,0x0003,0x0000,0x0003,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x3300,0x3300,
	0x3300,0x3300,0x3300,0x3300,0x3300,0x3300,0x3300,0x3300,
	0x3300,0x0000,0x3300,0x0000,0x3300,0x0000,0x3300,0x0000,
	0x3300,0x0000,0x3300,0x0000,0x3300,0x0000,0x3300,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x3000,0x0333,
	0x3300,0x0300,0x3300,0x0033,0x0000,0x0333,0x0300,0x0300,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x3000,0x3333,
	0x3300,0x3333,0x3300,0x0000,0x3300,0x0000,0x3300,0x0003,
	0x0000,0x0003,0x0000,0x0003,0x3000,0x0000,0x3300,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x3000,0x3333,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x3300,0x3333,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0003,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x3300,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x3300,0x0033,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x1000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0100,0x0000,0x1100,
	0x0000,0x0100,0x0000,0x0100,0x0000,0x0100,0x0000,0x1100,
	0x0000,0x0000,0x0000,0x0000,0x0011,0x1010,0x0100,0x0110,
	0x0100,0x0010,0x0100,0x0010,0x0010,0x0010,0x0001,0x0100,
	0x0000,0x0000,0x0000,0x0000,0x1000,0x0011,0x1100,0x0111,
	0x0100,0x0000,0x0100,0x0000,0x1000,0x0011,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0111,0x1100,0x0001,0x0100,
	0x0110,0x1000,0x1000,0x0000,0x0111,0x1100,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0001,0x0000,0x0000,0x0000,
	0x0001,0x0000,0x0010,0x0000,0x0001,0x0000,0x0000,0x0000,
	0x1100,0x0001,0x0010,0x0000,0x0010,0x0000,0x1100,0x0000,
	0x1000,0x0011,0x0000,0x0010,0x0010,0x0010,0x1110,0x0001,
	0x1110,0x0111,0x0010,0x0000,0x0010,0x0000,0x1110,0x0011,
	0x0010,0x0000,0x0010,0x1000,0x0010,0x1000,0x1110,0x1111,

	0x0100,0x0000,0x0100,0x0000,0x0100,0x0000,0x0100,0x0000,
	0x0100,0x0000,0x0100,0x0000,0x0100,0x1000,0x1100,0x0111,
	0x1100,0x1111,0x0100,0x0000,0x0100,0x0000,0x1100,0x0111,
	0x0100,0x0000,0x0100,0x0000,0x0100,0x0000,0x1100,0x1111,
	0x0000,0x1111,0x1000,0x0000,0x0100,0x0000,0x0100,0x0000,
	0x0100,0x0000,0x0101,0x0000,0x1001,0x0000,0x0001,0x1111,
	0x1101,0x1111,0x0011,0x0010,0x0000,0x0010,0x0000,0x0010,
	0x0000,0x0010,0x0000,0x0010,0x0001,0x0010,0x0001,0x0010,

	0x0011,0x0000,0x0010,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x1000,0x0000,0x1100,0x0001,0x1000,0x1000,
	0x1000,0x1000,0x1000,0x1000,0x1000,0x0011,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x1111,0x0000,0x0000,0x0001,
	0x0000,0x0001,0x0000,0x0001,0x1111,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x1000,0x0011,0x1000,0x1010,
	0x1000,0x1000,0x1000,0x1000,0x1000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0111,0x1110,0x0111,0x0010,
	0x0000,0x1100,0x0000,0x0000,0x0111,0x1110,0x0000,0x0000,
	0x0000,0x0000,0x1000,0x0000,0x1101,0x0011,0x1001,0x1000,
	0x1001,0x1000,0x1001,0x1000,0x1000,0x0001,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x1111,0x1100,0x1000,0x0100,
	0x1000,0x0100,0x1000,0x0100,0x1111,0x0101,0x0000,0x0000,
	0x0000,0x0000,0x0100,0x0000,0x1111,0x0001,0x0101,0x0000,
	0x0100,0x0000,0x0100,0x0000,0x1100,0x0000,0x0000,0x0000,

	0x0000,0x1000,0x1000,0x1000,0x1100,0x1001,0x1000,0x1000,
	0x1000,0x1000,0x1000,0x1000,0x1000,0x1011,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x1110,0x1000,0x1001,0x1100,
	0x1000,0x0100,0x1000,0x0100,0x1000,0x1000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0011,0x0000,0x0111,0x1000,
	0x0000,0x1000,0x0000,0x1000,0x0011,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x1111,0x1000,0x1000,0x0100,
	0x1000,0x0100,0x1000,0x0100,0x1111,0x1000,0x1000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0111,0x1010,0x0100,0x0110,
	0x0100,0x0010,0x0100,0x0010,0x1111,0x0010,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x1111,0x1000,0x1001,0x1100,
	0x1001,0x0100,0x1001,0x0100,0x1001,0x1000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0011,0x0000,0x0111,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0011,0x0000,0x0000,0x0000,
	0x0000,0x0100,0x0000,0x0100,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0101,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x1000,0x0000,0x1000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x1000,0x0000,0x0111,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x2220,0x2222,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0022,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x2200,0x0000,0x3320,0x0000,0x3332,
	0x0000,0x2200,0x0000,0x3220,0x0000,0x3320,0x2200,0x2222,
	0x3322,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3332,0x3333,0x3333,0x3333,0x3333,0x3333,0x3222,0x3333,
	0x2233,0x3332,0x3333,0x3322,0x3333,0x3223,0x3333,0x3233,

	0x2223,0x0000,0x2333,0x0002,0x3333,0x0222,0x3333,0x0233,
	0x3333,0x2233,0x3333,0x2333,0x3333,0x3333,0x3333,0x3333,
	0x0000,0x0000,0x0000,0x2000,0x0000,0x2000,0x0220,0x2000,
	0x2220,0x2002,0x2222,0x2022,0x1222,0x2222,0x2202,0x2221,
	0x0000,0x1000,0x0022,0x0000,0x0222,0x0000,0x0222,0x0000,
	0x2222,0x0000,0x2221,0x0000,0x2211,0x0002,0x2211,0x0002,
	0x0010,0x0000,0x0001,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x2000,0x0000,0x3200,0x0000,0x3200,
	0x2000,0x3333,0x3200,0x3333,0x3200,0x3333,0x3200,0x3333,
	0x2220,0x2222,0x3322,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3322,0x3333,0x2223,0x3333,0x2233,0x3333,0x2333,0x3332,
	0x3333,0x2233,0x3333,0x2333,0x3333,0x2333,0x3333,0x2333,
	0x3333,0x2333,0x3333,0x2333,0x3333,0x2333,0x3333,0x2333,

	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x2333,0x3333,0x2333,0x3333,0x3333,
	0x2022,0x3333,0x2023,0x3333,0x2023,0x2233,0x2223,0x3233,
	0x3322,0x3333,0x3332,0x3333,0x3332,0x3333,0x2222,0x3322,
	0x3333,0x0002,0x3333,0x0022,0x3332,0x0023,0x3333,0x0023,
	0x3333,0x0223,0x3333,0x0233,0x3333,0x0233,0x3333,0x2233,
	0x0000,0x3320,0x0000,0x3320,0x0000,0x3320,0x0000,0x3332,
	0x0000,0x3332,0x0000,0x3332,0x0000,0x3332,0x0000,0x3112,

	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3323,0x3333,0x3323,0x3333,0x3323,0x3333,
	0x3333,0x3322,0x3333,0x3223,0x3333,0x3233,0x3333,0x3233,
	0x3333,0x2333,0x3333,0x2333,0x3333,0x2333,0x3333,0x2333,
	0x3333,0x2333,0x3333,0x2333,0x3333,0x2333,0x3333,0x2333,
	0x3333,0x2233,0x3333,0x3233,0x3333,0x3233,0x3333,0x3233,
	0x3333,0x2333,0x3333,0x2233,0x3333,0x2233,0x3333,0x3223,
	0x3333,0x3322,0x3333,0x3332,0x2333,0x3332,0x2333,0x3333,

	0x3332,0x3222,0x3333,0x3202,0x2333,0x3202,0x2333,0x3202,
	0x2333,0x3202,0x2233,0x3222,0x3223,0x3323,0x3323,0x3323,
	0x3333,0x2333,0x3333,0x2333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x0000,0x0000,0x0002,0x0000,0x0002,0x0000,0x0002,0x0000,
	0x0002,0x0000,0x0022,0x0000,0x0023,0x0000,0x0023,0x0000,
	0x0000,0x1112,0x0000,0x1112,0x0000,0x1120,0x0000,0x1120,
	0x0000,0x1120,0x0000,0x1120,0x0000,0x1200,0x0000,0x2200,

	0x3323,0x3333,0x3221,0x3333,0x3211,0x3333,0x2211,0x3333,
	0x2111,0x3332,0x1111,0x3322,0x1111,0x3221,0x1111,0x2211,
	0x3333,0x2333,0x3333,0x2333,0x3333,0x2333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3233,0x3333,0x3233,0x3332,0x3233,0x3332,0x3233,
	0x3332,0x3233,0x3332,0x3233,0x3332,0x3323,0x3322,0x3323,
	0x2233,0x3333,0x3233,0x2333,0x3223,0x2333,0x3323,0x2233,
	0x3322,0x3223,0x3332,0x3322,0x3332,0x3332,0x2332,0x3332,

	0x3322,0x3332,0x2332,0x3332,0x2333,0x3332,0x2333,0x3333,
	0x2233,0x3333,0x3233,0x3333,0x3223,0x3333,0x3322,0x3323,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x0023,0x0000,0x0023,0x0000,0x0023,0x0000,0x0023,0x0000,
	0x0023,0x0000,0x0023,0x0000,0x0022,0x0000,0x0002,0x0000,
	0x0000,0x2000,0x0000,0x2000,0x0000,0x2200,0x0000,0x3220,
	0x2000,0x3332,0x2000,0x3333,0x2200,0x3333,0x3200,0x3333,

	0x1112,0x2111,0x2222,0x2222,0x3333,0x2333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3332,0x3333,0x3322,0x3333,0x2222,0x3333,0x2223,0x3332,
	0x3333,0x3222,0x3333,0x2233,0x3333,0x3333,0x2222,0x2222,
	0x3323,0x3323,0x3323,0x2323,0x3223,0x2323,0x3233,0x2323,
	0x3233,0x2233,0x2232,0x2233,0x2222,0x2233,0x2222,0x2232,
	0x2332,0x2333,0x2232,0x2333,0x3233,0x3233,0x3233,0x3223,
	0x3232,0x3322,0x2232,0x3332,0x2222,0x3333,0x3222,0x3333,

	0x3332,0x3223,0x3333,0x3233,0x3333,0x2233,0x3333,0x2333,
	0x3333,0x3333,0x3333,0x3333,0x3233,0x3333,0x3233,0x3333,
	0x3333,0x3333,0x3333,0x2333,0x3333,0x2233,0x3332,0x0223,
	0x3332,0x0222,0x2232,0x0223,0x3222,0x0023,0x3322,0x0022,
	0x0002,0x0000,0x0002,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x1000,0x0000,

	0x3200,0x3333,0x3200,0x3333,0x3200,0x3333,0x3200,0x3333,
	0x2200,0x3333,0x2000,0x3333,0x2000,0x3333,0x0000,0x3332,
	0x3333,0x2233,0x3333,0x3223,0x3333,0x3322,0x2333,0x3332,
	0x2333,0x3333,0x2333,0x3333,0x2333,0x3333,0x2113,0x3333,
	0x3332,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x2233,0x3333,0x3223,0x3333,0x3322,0x3333,0x3332,
	0x2223,0x2222,0x2333,0x2222,0x3333,0x2333,0x2222,0x2222,
	0x3332,0x3233,0x3333,0x3233,0x3333,0x3233,0x3333,0x2233,

	0x3322,0x3333,0x3322,0x3333,0x3332,0x3333,0x3332,0x2333,
	0x3222,0x2222,0x2233,0x3332,0x3333,0x1333,0x3333,0x1333,
	0x3233,0x2333,0x2233,0x2222,0x2223,0x1111,0x1122,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x3222,0x0002,0x2211,0x0222,0x1111,0x0221,0x1111,0x2211,
	0x1111,0x2111,0x1111,0x1111,0x2211,0x1122,0x2222,0x2200,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0002,0x0000,0x0022,0x0000,0x0021,0x0000,0x0221,0x0000,

	0x0100,0x0001,0x1000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x3220,0x0000,0x2000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x2111,0x3333,0x1112,0x3332,0x2220,0x3322,0x0000,0x3320,
	0x0000,0x2200,0x0000,0x2000,0x0000,0x0000,0x0000,0x0000,
	0x3333,0x3332,0x3333,0x3332,0x3333,0x3332,0x3333,0x3332,
	0x1333,0x3332,0x1322,0x3332,0x2220,0x3322,0x0000,0x3220,

	0x3333,0x2333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x1333,0x3333,0x1113,0x3333,0x1111,0x3333,0x1111,
	0x3332,0x3333,0x3322,0x3333,0x2221,0x3332,0x2111,0x2222,
	0x1111,0x2211,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x2211,0x1113,0x0222,0x2223,0x0222,0x2222,0x0222,
	0x2222,0x0222,0x2221,0x0222,0x2111,0x0222,0x1111,0x0221,
	0x2222,0x2000,0x2222,0x0000,0x2222,0x0000,0x2222,0x0000,
	0x2222,0x0002,0x2222,0x0022,0x2220,0x0022,0x2220,0x0022,

	0x2212,0x0000,0x2222,0x0000,0x2220,0x0002,0x2200,0x0002,
	0x2000,0x0002,0x0000,0x0002,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0100,0x0000,0x1000,0x0000,0x0100,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0001,0x0000,0x0000,0x0000,0x0001,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0001,
	0x1000,0x0010,0x0000,0x0001,0x0000,0x0000,0x0000,0x0000,

	0x3332,0x1113,0x2222,0x2222,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x1111,0x1111,0x2222,0x2222,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x1111,0x2211,0x1112,0x1111,0x2222,0x1122,0x0000,0x2220,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0002,0x0000,0x0021,0x0000,0x0222,0x0000,
	0x2222,0x0000,0x2200,0x0000,0x0000,0x0000,0x0000,0x0000,
};

const unsigned short losescreenMap[1024] __attribute__((aligned(4)))=
{
	0x0001,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0401,0x0002,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0003,0x0004,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0005,0x0000,0x0000,

	0x0000,0x0C05,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0006,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0007,
	0x0000,0x0008,0x0009,0x000A,0x0000,0x0000,0x0000,0x000B,
	0x0000,0x0008,0x0009,0x000C,0x0000,0x000D,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x000E,
	0x0000,0x000F,0x0000,0x0010,0x0011,0x0000,0x0000,0x0012,
	0x0000,0x000F,0x0000,0x0013,0x0000,0x000F,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0014,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0015,0x0016,0x0017,0x0018,0x0019,0x001A,
	0x001B,0x001C,0x001D,0x001E,0x001F,0x0020,0x0021,0x0022,
	0x0023,0x0024,0x0025,0x0026,0x0027,0x0028,0x0029,0x002A,
	0x002B,0x002C,0x002D,0x002E,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x002F,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0030,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0031,
	0x0032,0x0033,0x0034,0x0000,0x0000,0x0414,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0035,
	0x0036,0x0037,0x0038,0x0039,0x003A,0x003B,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x003C,0x003D,
	0x003E,0x003F,0x0040,0x0041,0x0042,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0043,0x0044,
	0x0045,0x0046,0x0047,0x0048,0x0049,0x004A,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x004B,0x004C,
	0x004D,0x004E,0x004F,0x0050,0x0051,0x0052,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0053,0x0054,
	0x0055,0x0056,0x0057,0x0058,0x0059,0x005A,0x0000,0x0000,
	0x005B,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x005C,0x005D,
	0x005E,0x005F,0x0060,0x0061,0x0062,0x0063,0x0000,0x0000,

	0x0064,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0065,0x0066,
	0x0067,0x0068,0x0069,0x006A,0x006B,0x006C,0x0000,0x0000,
	0x0000,0x006D,0x006E,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x006F,
	0x0C34,0x0070,0x0071,0x0072,0x0073,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
};

const unsigned short losescreenPal[256] __attribute__((aligned(4)))=
{
	0x1C2C,0x001F,0x0000,0x7FFF,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
};

//}}BLOCK(losescreen)
