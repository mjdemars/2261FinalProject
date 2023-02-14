
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

const unsigned short startscreenTiles[2816] __attribute__((aligned(4)))=
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
	0x0000,0x0000,0x1000,0x1111,0x0000,0x0011,0x0000,0x0011,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x1111,0x0000,0x1000,0x0000,0x1000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x1000,0x0000,0x0110,0x0000,0x0011,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x1111,0x0000,0x1000,0x0001,0x0000,0x0011,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x1000,0x0111,0x0000,0x0011,0x0000,0x0110,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x1100,0x0001,0x0100,0x0000,0x0100,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x1000,0x0000,0x1000,0x1111,0x1000,0x1000,0x0000,0x1000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0011,0x0000,0x0110,0x0000,0x0110,0x0000,
	0x0000,0x0011,0x0000,0x0011,0x0000,0x1111,0x0000,0x0011,
	0x0000,0x0011,0x0000,0x0011,0x0000,0x0011,0x1000,0x1111,
	0x0100,0x0000,0x0100,0x0000,0x0111,0x0000,0x0100,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x1000,0x0001,0x1000,0x0001,0x1000,0x0001,0x1000,0x0001,
	0x1000,0x0001,0x0000,0x0011,0x0000,0x0110,0x0000,0x1100,
	0x0000,0x0110,0x0000,0x0110,0x0000,0x0110,0x0000,0x0110,
	0x0000,0x0110,0x0000,0x0011,0x0000,0x0001,0x1111,0x0000,
	0x0000,0x1110,0x0000,0x1100,0x0000,0x1000,0x0000,0x1000,
	0x0000,0x0100,0x0000,0x0010,0x0000,0x0001,0x1000,0x0011,
	0x0010,0x0000,0x0001,0x0000,0x0001,0x0000,0x0011,0x0000,
	0x0111,0x0000,0x0110,0x0000,0x1100,0x0000,0x1110,0x0001,

	0x0000,0x1000,0x0000,0x1000,0x0000,0x1000,0x0000,0x1000,
	0x0000,0x1000,0x0000,0x1000,0x0000,0x1000,0x0000,0x1100,
	0x0000,0x0011,0x0000,0x0011,0x0000,0x1111,0x0000,0x0011,
	0x0000,0x0011,0x0000,0x0011,0x0000,0x0011,0x1000,0x0111,
	0x0110,0x0000,0x0011,0x0000,0x0001,0x0000,0x0011,0x0000,
	0x0011,0x0000,0x0110,0x0000,0x0110,0x0000,0x1100,0x0001,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x3300,0x0000,0x3000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0333,0x3300,0x3000,0x0300,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x3003,0x0033,0x3303,0x0033,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x3333,0x3300,0x0003,0x0300,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x3000,0x0000,0x3000,0x0033,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0333,0x3330,
	0x0000,0x0003,0x0000,0x0000,0x0033,0x0000,0x3330,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x3333,0x0003,
	0x0003,0x0003,0x0003,0x0000,0x0003,0x3000,0x0003,0x3000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0030,0x3300,
	0x0030,0x3000,0x0333,0x3000,0x0300,0x3000,0x3333,0x3000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0333,0x3300,
	0x3000,0x0030,0x3000,0x0000,0x0333,0x0000,0x0330,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x3333,0x0033,
	0x0030,0x0030,0x0030,0x0000,0x0030,0x0000,0x0030,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0300,0x0000,0x3330,0x3003,0x0300,0x0300,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0033,0x0000,0x0300,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0333,0x3330,0x0303,0x3333,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x3000,0x0333,0x0300,0x0300,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0030,
	0x0000,0x0030,0x0000,0x0030,0x3300,0x0033,0x0030,0x0030,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0033,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x3003,0x0000,0x3003,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x3330,0x3300,0x3003,0x0300,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0003,0x3033,0x0333,0x0000,0x0003,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0333,0x3003,0x0303,0x3003,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x3000,0x3033,0x0300,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0033,
	0x0000,0x0000,0x0003,0x0000,0x0333,0x0003,0x0003,0x3003,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0333,0x0300,0x3000,0x3300,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0333,0x3330,0x0300,0x0030,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0003,0x0000,0x0000,0x0000,
	0x0000,0x3000,0x0000,0x3000,0x0000,0x3000,0x0000,0x3000,
	0x0000,0x3000,0x0000,0x3000,0x0000,0x0000,0x0000,0x0000,

	0x3000,0x0300,0x3000,0x0300,0x0303,0x0300,0x0030,0x0000,
	0x0000,0x0000,0x0003,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0300,0x0000,0x0300,0x0000,0x3000,0x0033,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x3330,0x3000,0x3000,0x0000,0x0333,0x3300,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0033,0x0000,0x0030,0x3000,0x0003,0x3000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x3000,0x0000,0x3000,0x0000,0x0333,0x0000,0x0000,0x3000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0003,0x3000,0x0003,0x0300,0x0003,0x0300,0x0030,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x3000,0x3000,0x3000,0x3003,0x3000,0x3003,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x3300,0x0000,0x3300,0x0000,0x3003,0x0003,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0030,0x0000,0x0030,0x0000,0x0030,0x0000,0x0303,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0300,0x0300,0x0300,0x0300,0x3300,0x3000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0300,0x0000,0x0300,0x0000,0x0033,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0003,0x0003,0x0003,0x0003,0x0003,0x3330,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0300,0x0300,0x0300,0x0300,0x3000,0x3333,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0030,0x0030,0x0030,0x0030,0x3300,0x0333,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x3003,0x0000,0x3003,0x0000,0x3003,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x3000,0x3000,0x3000,0x0000,0x3000,0x3300,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0033,0x0003,0x0030,0x0003,0x0003,0x0033,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0003,0x3003,0x0003,0x3003,0x0003,0x3333,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0300,0x0000,0x0300,0x0000,0x3003,0x0033,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0003,0x3003,0x0003,0x3003,0x0033,0x0003,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x3000,0x0300,0x3000,0x0300,0x0333,0x0300,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0300,0x3300,0x0300,0x0000,0x0300,0x3330,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0003,0x0000,0x0003,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x3330,0x0033,0x0300,0x0300,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x3330,0x3300,0x3030,0x3330,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x3003,0x0333,0x3003,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x3330,0x0003,0x0030,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x3000,0x0033,
	0x0300,0x0000,0x0300,0x0000,0x3000,0x0003,0x0000,0x0333,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x3300,0x3333,
	0x0300,0x0000,0x0300,0x0000,0x3300,0x0333,0x0300,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x3000,0x0000,
	0x3000,0x0000,0x3000,0x0000,0x3000,0x0000,0x3000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x3000,0x3333,
	0x3000,0x0000,0x3000,0x0000,0x3000,0x3333,0x3000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0003,0x3330,
	0x0000,0x0003,0x3000,0x0000,0x3000,0x0000,0x3000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x3033,0x3333,
	0x0330,0x0300,0x0000,0x0300,0x0000,0x0300,0x0000,0x0300,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0333,0x0000,
	0x0300,0x0000,0x0000,0x3000,0x0000,0x3300,0x0000,0x3000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0033,0x0333,0x3000,0x3000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x3330,0x0000,0x0030,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x3000,0x0000,0x3303,0x0033,0x3000,0x3000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x3333,0x3300,0x3000,0x0300,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0300,0x0000,0x3333,0x0003,0x0303,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x3300,0x0033,0x0030,0x0033,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x3330,0x3003,0x0003,0x3003,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x3330,0x3330,0x3003,0x3003,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x3000,0x0033,0x3300,0x0033,
	0x0300,0x0300,0x0300,0x0300,0x3300,0x0030,0x0300,0x0003,
	0x0300,0x0000,0x3300,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0030,0x0030,0x0030,0x0030,0x0030,0x3300,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0333,0x0000,0x0300,0x3003,0x0033,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x3300,0x0003,0x0000,0x0003,0x3330,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0300,0x0300,0x0300,0x3300,0x0033,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0300,0x0000,0x0300,0x0000,0x3300,0x3333,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x3003,0x0000,0x3003,0x0000,0x3003,0x3333,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x3000,0x0000,0x3003,0x0000,0x3000,0x3333,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x3030,0x0000,0x0030,0x0003,0x0033,0x3330,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0300,0x0030,0x0300,0x0033,0x0300,0x0000,0x3030,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x3000,0x0000,0x3000,0x0000,0x3000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x3000,0x3000,0x3000,0x3000,0x0003,0x0333,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x3300,0x0000,0x0000,0x0000,0x3330,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x3003,0x3000,0x3003,0x3000,0x3000,0x0003,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x3000,0x0300,0x3000,0x0300,0x3333,0x0303,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0300,0x0000,0x0300,0x0000,0x3300,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0030,0x0030,0x0030,0x0033,0x3300,0x0030,0x0000,0x0030,
	0x0330,0x0030,0x3300,0x0003,0x0000,0x0000,0x0000,0x0000,

	0x0003,0x3003,0x0003,0x3003,0x3330,0x3033,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x3000,0x3000,0x3000,0x3000,0x3000,0x3000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x2220,0x2222,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0022,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0001,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x2200,0x0000,0x4420,0x0000,0x4442,
	0x0000,0x2200,0x0000,0x4220,0x0000,0x4420,0x2200,0x2222,
	0x4422,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,
	0x4442,0x4444,0x4444,0x4444,0x4444,0x4444,0x4222,0x4444,
	0x2244,0x4442,0x4444,0x4422,0x4444,0x4224,0x4444,0x4244,

	0x2224,0x0000,0x2444,0x0002,0x4444,0x0222,0x4444,0x0244,
	0x4444,0x2244,0x4444,0x2444,0x4444,0x4444,0x4444,0x4444,
	0x0000,0x0000,0x0000,0x2000,0x0000,0x2000,0x0220,0x2000,
	0x2220,0x2002,0x2222,0x2022,0x1222,0x2222,0x2202,0x2221,
	0x0000,0x1000,0x0022,0x0000,0x0222,0x0000,0x0222,0x0000,
	0x2222,0x0000,0x2221,0x0000,0x2211,0x0002,0x2211,0x0002,
	0x0010,0x0000,0x0001,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x2000,0x0000,0x4200,0x0000,0x4200,
	0x2000,0x4444,0x4200,0x4444,0x4200,0x4444,0x4200,0x4444,
	0x2220,0x2222,0x4422,0x4444,0x4444,0x4444,0x4444,0x4444,
	0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,
	0x4422,0x4444,0x2224,0x4444,0x2244,0x4444,0x2444,0x4442,
	0x4444,0x2244,0x4444,0x2444,0x4444,0x2444,0x4444,0x2444,
	0x4444,0x2444,0x4444,0x2444,0x4444,0x2444,0x4444,0x2444,

	0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,
	0x4444,0x4444,0x4444,0x2444,0x4444,0x2444,0x4444,0x4444,
	0x2022,0x4444,0x2024,0x4444,0x2024,0x2244,0x2224,0x4244,
	0x4422,0x4444,0x4442,0x4444,0x4442,0x4444,0x2222,0x4422,
	0x4444,0x0002,0x4444,0x0022,0x4442,0x0024,0x4444,0x0024,
	0x4444,0x0224,0x4444,0x0244,0x4444,0x0244,0x4444,0x2244,
	0x0000,0x4420,0x0000,0x4420,0x0000,0x4420,0x0000,0x4442,
	0x0000,0x4442,0x0000,0x4442,0x0000,0x4442,0x0000,0x4112,

	0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,
	0x4444,0x4444,0x4424,0x4444,0x4424,0x4444,0x4424,0x4444,
	0x4444,0x4422,0x4444,0x4224,0x4444,0x4244,0x4444,0x4244,
	0x4444,0x2444,0x4444,0x2444,0x4444,0x2444,0x4444,0x2444,
	0x4444,0x2444,0x4444,0x2444,0x4444,0x2444,0x4444,0x2444,
	0x4444,0x2244,0x4444,0x4244,0x4444,0x4244,0x4444,0x4244,
	0x4444,0x2444,0x4444,0x2244,0x4444,0x2244,0x4444,0x4224,
	0x4444,0x4422,0x4444,0x4442,0x2444,0x4442,0x2444,0x4444,

	0x4442,0x4222,0x4444,0x4202,0x2444,0x4202,0x2444,0x4202,
	0x2444,0x4202,0x2244,0x4222,0x4224,0x4424,0x4424,0x4424,
	0x4444,0x2444,0x4444,0x2444,0x4444,0x4444,0x4444,0x4444,
	0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,
	0x0000,0x0000,0x0002,0x0000,0x0002,0x0000,0x0002,0x0000,
	0x0002,0x0000,0x0022,0x0000,0x0024,0x0000,0x0024,0x0000,
	0x0000,0x1112,0x0000,0x1112,0x0000,0x1120,0x0000,0x1120,
	0x0000,0x1120,0x0000,0x1120,0x0000,0x1200,0x0000,0x2200,

	0x4424,0x4444,0x4221,0x4444,0x4211,0x4444,0x2211,0x4444,
	0x2111,0x4442,0x1111,0x4422,0x1111,0x4221,0x1111,0x2211,
	0x4444,0x2444,0x4444,0x2444,0x4444,0x2444,0x4444,0x4444,
	0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,
	0x4444,0x4244,0x4444,0x4244,0x4442,0x4244,0x4442,0x4244,
	0x4442,0x4244,0x4442,0x4244,0x4442,0x4424,0x4422,0x4424,
	0x2244,0x4444,0x4244,0x2444,0x4224,0x2444,0x4424,0x2244,
	0x4422,0x4224,0x4442,0x4422,0x4442,0x4442,0x2442,0x4442,

	0x4422,0x4442,0x2442,0x4442,0x2444,0x4442,0x2444,0x4444,
	0x2244,0x4444,0x4244,0x4444,0x4224,0x4444,0x4422,0x4424,
	0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,
	0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,
	0x0024,0x0000,0x0024,0x0000,0x0024,0x0000,0x0024,0x0000,
	0x0024,0x0000,0x0024,0x0000,0x0022,0x0000,0x0002,0x0000,
	0x0000,0x2000,0x0000,0x2000,0x0000,0x2200,0x0000,0x4220,
	0x2000,0x4442,0x2000,0x4444,0x2200,0x4444,0x4200,0x4444,

	0x1112,0x2111,0x2222,0x2222,0x4444,0x2444,0x4444,0x4444,
	0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,
	0x4442,0x4444,0x4422,0x4444,0x2222,0x4444,0x2224,0x4442,
	0x4444,0x4222,0x4444,0x2244,0x4444,0x4444,0x2222,0x2222,
	0x4424,0x4424,0x4424,0x2424,0x4224,0x2424,0x4244,0x2424,
	0x4244,0x2244,0x2242,0x2244,0x2222,0x2244,0x2222,0x2242,
	0x2442,0x2444,0x2242,0x2444,0x4244,0x4244,0x4244,0x4224,
	0x4242,0x4422,0x2242,0x4442,0x2222,0x4444,0x4222,0x4444,

	0x4442,0x4224,0x4444,0x4244,0x4444,0x2244,0x4444,0x2444,
	0x4444,0x4444,0x4444,0x4444,0x4244,0x4444,0x4244,0x4444,
	0x4444,0x4444,0x4444,0x2444,0x4444,0x2244,0x4442,0x0224,
	0x4442,0x0222,0x2242,0x0224,0x4222,0x0024,0x4422,0x0022,
	0x0002,0x0000,0x0002,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x1000,0x0000,

	0x4200,0x4444,0x4200,0x4444,0x4200,0x4444,0x4200,0x4444,
	0x2200,0x4444,0x2000,0x4444,0x2000,0x4444,0x0000,0x4442,
	0x4444,0x2244,0x4444,0x4224,0x4444,0x4422,0x2444,0x4442,
	0x2444,0x4444,0x2444,0x4444,0x2444,0x4444,0x2114,0x4444,
	0x4442,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,
	0x4444,0x2244,0x4444,0x4224,0x4444,0x4422,0x4444,0x4442,
	0x2224,0x2222,0x2444,0x2222,0x4444,0x2444,0x2222,0x2222,
	0x4442,0x4244,0x4444,0x4244,0x4444,0x4244,0x4444,0x2244,

	0x4422,0x4444,0x4422,0x4444,0x4442,0x4444,0x4442,0x2444,
	0x4222,0x2222,0x2244,0x4442,0x4444,0x1444,0x4444,0x1444,
	0x4244,0x2444,0x2244,0x2222,0x2224,0x1111,0x1122,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x4222,0x0002,0x2211,0x0222,0x1111,0x0221,0x1111,0x2211,
	0x1111,0x2111,0x1111,0x1111,0x2211,0x1122,0x2222,0x2200,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0002,0x0000,0x0022,0x0000,0x0021,0x0000,0x0221,0x0000,

	0x0100,0x0001,0x1000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x4220,0x0000,0x2000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x2111,0x4444,0x1112,0x4442,0x2220,0x4422,0x0000,0x4420,
	0x0000,0x2200,0x0000,0x2000,0x0000,0x0000,0x0000,0x0000,
	0x4444,0x4442,0x4444,0x4442,0x4444,0x4442,0x4444,0x4442,
	0x1444,0x4442,0x1422,0x4442,0x2220,0x4422,0x0000,0x4220,

	0x4444,0x2444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,
	0x4444,0x1444,0x4444,0x1114,0x4444,0x1111,0x4444,0x1111,
	0x4442,0x4444,0x4422,0x4444,0x2221,0x4442,0x2111,0x2222,
	0x1111,0x2211,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x2211,0x1114,0x0222,0x2224,0x0222,0x2222,0x0222,
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

	0x4442,0x1114,0x2222,0x2222,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x1111,0x1111,0x2222,0x2222,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x1111,0x2211,0x1112,0x1111,0x2222,0x1122,0x0000,0x2220,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0002,0x0000,0x0021,0x0000,0x0222,0x0000,
	0x2222,0x0000,0x2200,0x0000,0x0000,0x0000,0x0000,0x0000,
};

const unsigned short startscreenMap[1024] __attribute__((aligned(4)))=
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
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0006,
	0x0007,0x0008,0x0009,0x000A,0x000B,0x0000,0x0000,0x000C,
	0x040C,0x0006,0x000D,0x0008,0x0009,0x000C,0x040C,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x000E,
	0x000F,0x0010,0x0011,0x0012,0x0013,0x0000,0x0000,0x0014,
	0x0414,0x0015,0x0016,0x0010,0x0011,0x0014,0x0414,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0017,0x0018,0x0019,0x001A,0x001B,
	0x001C,0x001D,0x001E,0x001F,0x0020,0x0021,0x0022,0x0023,
	0x0024,0x0025,0x0026,0x0027,0x0028,0x0029,0x002A,0x002B,
	0x002C,0x002D,0x002E,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x002F,0x0030,0x0031,0x0032,0x0033,
	0x0034,0x0035,0x0036,0x0037,0x0038,0x0039,0x003A,0x003B,
	0x003C,0x003D,0x003E,0x003F,0x0040,0x0041,0x0042,0x0043,
	0x0044,0x0045,0x0046,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0047,0x0048,0x0049,
	0x004A,0x004B,0x004C,0x004D,0x004E,0x004F,0x0050,0x0051,
	0x0052,0x0053,0x0054,0x0055,0x0056,0x0057,0x0058,0x0059,
	0x005A,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x005B,0x005C,0x005D,
	0x005E,0x005F,0x0060,0x0061,0x0062,0x0063,0x0064,0x0065,
	0x0066,0x0067,0x0068,0x0069,0x006A,0x006B,0x006C,0x006D,
	0x0031,0x006E,0x006F,0x0000,0x0000,0x0070,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0071,
	0x0072,0x0073,0x0074,0x0075,0x0076,0x0077,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0078,0x0079,
	0x007A,0x007B,0x007C,0x007D,0x007E,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x007F,0x0080,
	0x0081,0x0082,0x0083,0x0084,0x0085,0x0086,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0087,0x0088,
	0x0089,0x008A,0x008B,0x008C,0x008D,0x008E,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x008F,0x0090,
	0x0091,0x0092,0x0093,0x0094,0x0095,0x0096,0x0000,0x0000,
	0x0097,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0098,0x0099,
	0x009A,0x009B,0x009C,0x009D,0x009E,0x009F,0x0000,0x0000,

	0x00A0,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x00A1,0x00A2,
	0x00A3,0x00A4,0x00A5,0x00A6,0x00A7,0x00A8,0x0000,0x0000,
	0x0000,0x00A9,0x00AA,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x00AB,
	0x0C6F,0x00AC,0x00AD,0x00AE,0x00AF,0x0000,0x0000,0x0000,

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

const unsigned short startscreenPal[256] __attribute__((aligned(4)))=
{
	0x3CEC,0x7E5E,0x0000,0x7F3E,0x7FFF,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0004,0x0007,0x000B,0x000F,0x0013,0x0017,0x001B,0x001F,
	0x0080,0x00E0,0x0160,0x01E0,0x0260,0x02E0,0x0360,0x03E0,
	0x0084,0x00E7,0x016B,0x01EF,0x0273,0x02F7,0x037B,0x03FF,
	0x1000,0x1C00,0x2C00,0x3C00,0x4C00,0x5C00,0x6C00,0x7C00,
	0x1004,0x1C07,0x2C0B,0x3C0F,0x4C13,0x5C17,0x6C1B,0x7C1F,
	0x1080,0x1CE0,0x2D60,0x3DE0,0x4E60,0x5EE0,0x6F60,0x7FE0,

	0x0842,0x0C63,0x14A5,0x1CE7,0x2529,0x2D6B,0x35AD,0x3DEF,
	0x4631,0x4E73,0x56B5,0x5EF7,0x6739,0x6F7B,0x77BD,0x7FFF,
	0x001F,0x007F,0x00FF,0x017F,0x01FF,0x027F,0x02FF,0x037F,
	0x03FF,0x03FC,0x03F8,0x03F4,0x03F0,0x03EC,0x03E8,0x03E4,
	0x03E0,0x0FE0,0x1FE0,0x2FE0,0x3FE0,0x4FE0,0x5FE0,0x6FE0,
	0x7FE0,0x7F80,0x7F00,0x7E80,0x7E00,0x7D80,0x7D00,0x7C80,
	0x7C00,0x7C03,0x7C07,0x7C0B,0x7C0F,0x7C13,0x7C17,0x7C1B,
	0x7C1F,0x701F,0x601F,0x501F,0x401F,0x301F,0x201F,0x101F,

	0x001F,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
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
	0x0000,0x0421,0x0842,0x0C63,0x1084,0x14A5,0x18C6,0x1CE7,
	0x2108,0x2529,0x294A,0x2D6B,0x318C,0x35AD,0x39CE,0x3DEF,
	0x4210,0x4631,0x4A52,0x4E73,0x5294,0x56B5,0x5AD6,0x5EF7,
	0x6318,0x6739,0x6B5A,0x6F7B,0x739C,0x77BD,0x7BDE,0x7FFF,
};

//}}BLOCK(startscreen)
