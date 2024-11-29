pico-8 cartridge // http://www.pico-8.com
version 42
__lua__
#include utils/endless.lua
#include utils/level_manager.lua
#include utils/dialog.lua
#include utils/debug.lua
#include utils/dials.lua
#include data/levels.lua
#include main.lua
#include utils/menu.lua
__gfx__
00000000666666665555555555555555555555556666600000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000666666665000000550000005500000056660000007777777777777700000000000000000000000000000000000000000000000000000000000000000
007007006666666650b00b0550800805500000056660d50007777000007777700000000000000000000000000000000000000000000000000000000000000000
0007700066666666500bb00550088005500000056660d50007770888880000700000000000000000000000000000000000000000000000000000000000000000
0007700066666666500bb00550088005500000056660d50007770000000777700000000000000000000000000000000000000000000000000000000000000000
007007006666666650b00b0550800805500000056660d50007770707070777700000000000000000000000000000000000000000000000000000000000000000
00000000666666665000000550000005500000056660d50007770707070777700000000000000000000000000000000000000000000000000000000000000000
00000000666666665555555555555555555555556660d50007770777770777700000000000000000000000000000000000000000000000000000000000000000
00066666dddddddddddddddd00011111111110006660d50007770700070777700000000000000000000000000000000000000000000000000000000000000000
99000006555555555555555d011cccccccccc1106660d50007770777770777700000000000000000000000000000000000000000000000000000000000000000
990aad06000000000000005d1cccc111111cccc16660d50007777000007777700000000000000000000000000000000000000000000000000000000000000000
990aaa06666666666666605d1cc11cccccc11cc16660d500077700ddd00777700000000000000000000000000000000000000000000000000000000000000000
990aaa06666666666666605d1c1cccccccccc1c16660d5000770d0ddd0d077700000000000000000000000000000000000000000000000000000000000000000
990aad06666666666666605d1c1cccccccccc1c16660d5000770d0ddd0d077700000000000000000000000000000000000000000000000000000000000000000
99000006666666666666605d1c1cccccccccc1716660d5000770d0ddd0d077700000000000000000000000000000000000000000000000000000000000000000
00066666666666666666605d1cc11cccccc117c16660d50000000000000000000000000000000000000000000000000000000000000000000000000000000000
dddddddd666666666666605d11ccc111171ccc116660d50000000000000000000000000000000000000000000000000000000000000000000000000000000000
d5555555666666666666605d0111cccc7ccc11106660d50000000000000000000000000000000000000000000000000000000000000000000000000000000000
d5000000666666666666605d001c11111111c1006660d50000000000000000000000000000000000000000000000000000000000000000000000000000000000
d5066666666666666666605d0001cccccc7c10006660d50000000000000000000000000000000000000000000000000000000000000000000000000000000000
d5066666666666666666605d00001cccc7c100006660d50000000000000000000000000000000000000000000000000000000000000000000000000000000000
d5066666000000006666605d000001cc7c1000006660d50000000000000000000000000000000000000000000000000000000000000000000000000000000000
d5066666555555556666605d0000001cc10000006660000000000000000000000000000000000000000000000000000000000000000000000000000000000000
d5066666dddddddd6666605d00000001100000006666600000000000000000000000000000000000000000000000000000000000000000000000000000000000
6666605dd5066666d506666600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
6666605dd5066666d506666600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
6666605dd5066666d506666600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
6666605dd5066666d506666600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
6666605dd5066666d506666600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000005dd5000000d506666600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
5555555dd5555555d506666600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
ddddddddddddddddd506666600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__label__
dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd
d555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555d
d500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005d
d506666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666605d
d506666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666605d
d506666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666605d
d506666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666605d
d506666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666605d
d506666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666605d
d506666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666605d
d506666666666666666666666666666666666666667767776777677766666677677767776677676767776777667766666666666666666666666666666666605d
d506666666666666666666666666666666666666676667676766676666666766676767676766676767666767676666666666666666666666666666666666605d
d506666666666666666666666666666666666666677767776776677666666766677667776766677667766776677766666666666666666666666666666666605d
d506666666666666666666666666666666666666666767676766676666666766676767676766676767666767666766666666666666666666666666666666605d
d506666666666666666666666666666666666666677667676766677766666677676767676677676767776767677666666666666666666666666666666666605d
d506666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666605d
d506666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666605d
d506666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666605d
d506666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666605d
d506666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666605d
d506666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666605d
d506666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666605d
d506666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666605d
d506666666666666666666666666666666666666666666666666666666555555555555566666666666666666666666666666666666666666666666666666605d
0006666666666666666666666666666666666666666666666666655555555555555555555555666666666666666666666666666666666666666666666666605d
9900000666666666666666666666666666666666666666666555555555555555555555555555555566666666666666666666666666666666666666666666605d
990aad0666666666666666666666666666666666666666655555555555555555555555555555555555666666666666666666666666666666666666666666605d
990aaa0666666666666666666666666666666666666655555555555555555555555555555555555555555666666666666666666666666666666666666666605d
990aaa0666666666666666666666666666666666665555555555555555555555555555555555555555555556666666666666666666666666666666666666605d
990aad0666666666666666666666666666666666655555555555555555555555555555555555555555555555666666666666666666666666666666666666605d
9900000666666666666666666666666666666665555555555555555555555555555555555555555555555555556666666666666666666666666666666666605d
0006666666666666666666666666666666666655555555555555555555555555555555555555555555555555555666666666666666666666666666666666605d
d506666666666666666666666666666666665555555555555555555555666666666666655555555555555555555556666666666666666666666666666666605d
d506666666666666666666666666666611111555555555555555556666666666666666666665555555555555555111116666666666666666666666666666605d
d506666666666666666666666666666111111155555555555556666666666666666666666666665555555555551111111666666666666666666666666666605d
d506666666666666666666666666661111111115555555555666666666666666666666666666666655555555511111111166666666666666666666666666605d
d506666666666666666666666666611111111111555555566666666666666666666666666666666666555555111111111116666666666666666666666666605d
d506666666666666666666666666111111111111555556666666666666666666666666666666666666665555111111111111666666666666666666666666605d
d506666666666666666666666661111111111111555666666666666666666666666666666666666666666655111111111111166666666666666666666666605d
d506666666666666666666666611111111111111556666666666666666666666666666666666666666666665111111111111116666666666666666666666605d
d506666666666666666666666111111111111111566666666666666666666666666666666666666666666666111111111111111666666666666666666666605d
d506666666666666666666666111111111111116666666666666666666666666666666666666666666666666611111111111111666666666666666666666605d
d506666666666666666666661111111111111166666666666666666666666666666666666666666666666666661111111111111166666666666666666666605d
d506666666666666666666611111111111111666666666666666666666666666666666666666666666666666666111111111111116666666666666666666605d
d506666666666666666666111111111111116666666666666666666666666666666666666666666666666666666611111111111111666666666666666666605d
d506666666666666666666111111111111166666666666666666666666666666666666666666666666666666666661111111111111666666666666666666605d
d506666666666666666666111111111111166666666666666666666666666666666666666666666666666666666661111111111111666666666666666666605d
d506666666666666666661111111111111666666666666666666666666666666666666666666666666666666666666111111111111166666666666666666605d
d5066666666666666666611111111111166666666666666666666666666666666666666666666666666666666666666111111111111666666666666666666000
d5066666666666666666111111111111666666666666666666666666666666666666666666666666666666666666666611111177711166666666666666600000
d506666666666666666611111111111166666666666666666666666666666666666666666666666666666666666666661111177777116666666666666660d500
d506666666666666666611111111111166666666666666666666666666666666666666666666666666666666666666661111777777716666666666666660d500
d506666666666666666111111111111666666666666666666666666666666666666666666666666666666666666666666111777777711666666666666660d500
d506666666666666666111111111111666666666666666666666666666666666666666666666666666666666666666666111777777711666666666666660d500
d506666666666666661111111111116666666666666666666666666666666666666666666666666666666666666666666611177777111166666666666660d500
d506666666666666661111111111116666666666666666666666666666666666666666666666666666666666666666666611117771111166666666666660d500
d506666666666666661111111111116666666666666666666666666666666666666666666666666666666666666666666611111111111166666666666660d500
d506666666666666611111111111166666666666666666666666666666666666666666666666666666666666666666666661111111111116666666666660d500
d506666666666666611111111111166666666666666666666666666666666666666666666666666666666666666666666661111111111116666666666660d500
d506666666666666111111111111666666666666666666666666666666666666666666666666666666666666666666666666111111111111666666666660d500
d506666666666666111111111111666666666666666666666666666666666666666666666666666666666666666666666666111111111111666666666660d500
d506666666666666111111111111666666666666666666666666666666666666666666666666666666666666666666666666111111111111666666666660d500
d506666666666666111111111116666666666666666666666666666666666666666666666666666666666666666666666666611111111111666666666660d500
d506666666666666111111111116666666666666666666666666666666666666666666666666666666666666666666666666611111111111666666666660d500
d506666666666666111111111116666666666666777667767766777666666666677677766776777676766666666666666666611111111111666666666660d500
d506666666666666111111111116666666666666777676767676766667666666766667667676767676766666666666666666611111111111666666666660d500
d506666666666666111111111116666666666666767676767676776666666666777667667676776677766666666666666666611111111111666666666660d500
d506666666666666111111111116666666666666767676767676766667666666667667667676767666766666666666666666611111111111666666666660d500
d506666666666666111111111116666666666666767677667776777666666666776667667766767677766666666666666666611111111111166666666660d500
d506666666666666111111111116666666666666666666666666666666666666666666666666666666666666666666666666611111111111166666666660d500
d506666666666666111111111116666666666666666666666666666666666666666666666666666666666666666666666666611111111111166666666660d500
d506666666666666111111111116666666666666666666666666666666666666666666666666666666666666666666666666611111111111166666666660d500
d506666666666666111111111116666666666666666666666666666666666666666666666666666666666666666666666666611111111111166666666660d500
d506666666666666111111111116666666666666666666667776777677766776677666666777776666666666666666666666611111111111666666666660d500
d506666666666666111111111116666666666666666666667676767676667666766666667767677666666666666666666666611111111111666666666660d500
d506666666666666111111111116666666666666666666667776776677667776777666667776777666666666666666666666611111111111666666666660d500
d506666666666666111111111116666666666666666666667666767676666676667666667767677666666666666666666666611111111111666666666660d500
d506666666666666111111111116666666666666666666667666767677767766776666666777776666666666666666666666611111111111666666666660d500
d5066666666666661111111111116666666666666666666666666666666666666666666666666666666666666666666666661111111111116666666666600000
d5066666666666661111111111116666666666666666666666666666666666666666666666666666666666666666666666661111111111116666666666666000
d506666666666666111111111111666666666666666666666666666666666666666666666666666666666666666666666666111111111111666666666666605d
d506666666666666611111111111166666666666666666666666666666666666666666666666666666666666666666666661111111111116666666666666605d
d506666666666666611111111111166666666666666666666666666666666666666666666666666666666666666666666661111111111116666666666666605d
d506666666666666661111111111116666666666666666666666666666666666666666666666666666666666666666666611111111111166666666666666605d
d506666666666666661111111111116666666666666666666666666666666666666666666666666666666666666666666611111111111166666666666666605d
d506666666666666661111111111116666666666666666666666666666666666666666666666666666666666666666666611111111111166666666666666605d
d506666666666666666111111111111666666666666666666666666666666666666666666666666666666666666666666111111111111666666666666666605d
d506666666666666666111111111111666666666666666666666666666666666666666666666666666666666666666666111111111111666666666666666605d
d506666666666666666611111111111166666666666666666666666666666666666666666666666666666666666666661111111111116666666666666666605d
d506666666666666666611111111111166666666666666666666666666666666666666666666666666666666666666661111111111116666666666666666605d
d506666666666666666611111111111166666666666666666666666666666666666666666666666666666666666666661111111111116666666666666666605d
d506666666666666666661111111111116666666666666666666666666666666666666666666666666666666666666611111111111166666666666666666605d
d506666666666666666661111111111111666666666666666666666666666666666666666666666666666666666666111111111111166666666666666666605d
d506666666666666666666111111111111166666666666666666666666666666666666666666666666666666666661111111111111666666666666666666605d
d506666666666666666666111111111111166666666666666666666666666666666666666666666666666666666661111111111111666666666666666666605d
d506666666666666666666111111111111116666666666666666666666666666666666666666666666666666666611111111111111666666666666666666605d
0006666666666666666666611111111111111666666666666666666666666666666666666666666666666666666111111111111116666666666666666666605d
9900000666666666666666661111111111111166666666666666666666666666666666666666666666666666661111111111111166666666666666666666605d
990aad0666666666666666666111111111111166666666666666666666666666666666666666666666666666661111111111111666666666666666666666605d
990aaa0666666666666666666111111111111156666666666666666666666666666666666666666666666666661111111111111666666666666666666666605d
990aaa0666666666666666666611111111111155566666666666666666666666666666666666666666666666551111111111116666666666666666666666605d
990aad0666666666666666666661111111111155556666666666666666666666666666666666666666666665551111111111166666666666666666666666605d
9900000666666666666666666666111111111555555666666666666666666666666666666666666666666655555111111111666666666666666666666666605d
0006666666666666666666666666611111115555555556666666666666666666666666666666666666665555555511111116666666666666666666666666605d
d506666666666666666666666666661111155555555555566666666666666666666666666666666666555555555551111166666666666666666666666666605d
d506666666666666666666666666666665555555555555555666666666666666666666666666666655555555555555556666666666666666666666666666605d
d506666666666666666666666666666666555555555555555556666666666666666666666666665555555555555555566666666666666666666666666666605d
d506666666666666666666666666666666655555555555555555556666666666666666666665555555555555555555666666666666666666666666666666605d
d506666666666666666666666666666666665555555555555555555555666666666666655555555555555555555556666666666666666666666666666666605d
d506666666666666666666666666666666666655555555555555555555555555555555555555555555555555555666666666666666666666666666666666605d
d506666666666666666666666666666666666665555555555555555555555555555555555555555555555555556666666666666666666666666666666666605d
d506666666666666666666666666666666666666655555555555555555555555555555555555555555555555666666666666666666666666666666666666605d
d506666666666666666666666666666666666666665555555555555555555555555555555555555555555556666666666666666666666666666666666666605d
d506666666666666666666666666666666666666666655555555555555555555555555555555555555555666666666666666666666666666666666666666605d
d506666666666666666666666666666666666666666666655555555555555555555555555555555555666666666666666666666666666666666666666666605d
d506666666666666666666666666666666666666666666666555555555555555555555555555555566666666666666666666666666666666666666666666605d
d506666666666666666666666666666666666666666666666666655555555555555555555555666666666666666666666666666666666666666666666666605d
d506666666666666666666666666666666666666666666666666666666555555555555566666666666666666666666666666666666666666666666666666605d
d506666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666605d
d506666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666605d
d506666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666605d
d506666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666605d
d506666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666605d
d506666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666605d
d506666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666605d
d500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005d
d555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555d
dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd

__map__
2011111111111111111111111111111200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
3201010101010101010101010101012200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
3201010101010101010101010101012200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
1001010101010101010101010101012200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
3201010101010101010101010101012200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
3201010101010101010101010101012200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
3201010101010101010101010101010500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
3201010101010101010101010101011500000000000000001314000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
3201010101010101010101010101011500000000000000002324000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
3201010101010101010101010101012500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
3201010101010101010101010101012200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
3201010101010101010101010101012200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
1001010101010101010101010101012200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
3201010101010101010101010101012200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
3201010101010101010101010101012200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
3121212121212121212121212121213000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__sfx__
000400003106001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000c00001105011050110502500025000250002500025000250000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00080000310501c000310500c00039050390503905000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000400000b1500c15010150101500a150011000510005100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100
010c00200c0000c200004003a300004003c3003c3000c0003c6000c0000040000400002003e5003e5000c100034001b300034003700037500370003c6003e5000330003400032001b3000c0001b3000000000000
010c00200c00012200064003a300064003c3003c3000c0003c6000c0000640006400062003e5003e5000c1000c00011200054001b300054003a0002e5003a0003c6003e50003300054001320005400033001b300
010c00202200024200244002430022400243002430022300223002400022400242002220024400245002420022300222002440024300224002400024500220002450024500223002440022200244002430022300
010c0000224002b4002e40030400304003040033400304003040030200294002b2002e400302002b400272002a4002a4002a40027400274002740025400274002740027400274002720027400272002740027200
010c00002a4002a4002a400274002740027400272002740027400254002a2002e4002b2002a400252002a4002740027400274002440024200244002240024400244002440024400244002420024400182000c400
__music__
00 04424344
00 45424344
01 44464344
00 45464344
00 44464344
00 45464344
00 44474344
00 45484344
00 44474344
02 45484344

