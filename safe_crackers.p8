pico-8 cartridge // http://www.pico-8.com
version 42
__lua__
#include utils/level_manager.lua
#include utils/dialog.lua
#include utils/debug.lua
#include utils/dials.lua
#include data/levels.lua
#include main.lua
__gfx__
00000000666666660055550000555500005555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000006666666605bbbb5005888850056666500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700666666665bbbbbb558888885566666650000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000666666665bbbbbb558888885566666650000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000666666665bbbbbb558888885566666650000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700666666665bbbbbb558888885566666650000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000006666666605bbbb5005888850056666500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000666666660055550000555500005555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
10101010101010101010101010101010101010101010101010101010101010101010101010101010000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
10101010101010101010101010101010101010101010101010101010101010101010101010101010000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
10101010101010101010101010101010101010101010101010101010101010101010101010101010000000000000000000000000000000000000000000000000
__label__
66666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666
66666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666
66666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666
66666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666
66666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666
66666666666666666666666666666666666666666666666666665555666666555566666655556666666666666666666666666666666666666666666666666666
6666666666666666666666666666666666666666666666666665bbbb566665666656666566665666666666666666666666666666666666666666666666666666
666666666666666666666666666666666666666666666666665bbbbbb56656666665665666666566666666666666666666666666666666666666666666666666
666666666666666666666666666666666666666666666666665bbbbbb56656666665665666666566666666666666666666666666666666666666666666666666
666666666666666666666666666666666666666666666666665bbbbbb56656666665665666666566666666666666666666666666666666666666666666666666
666666666666666666666666666666666666666666666666665bbbbbb56656666665665666666566666666666666666666666666666666666666666666666666
6666666666666666666666666666666666666666666666666665bbbb566665666656666566665666666666666666666666666666666666666666666666666666
66666666666666666666666666666666666666666666666666665555666666555566666655556666666666666666666666666666666666666666666666666666
66666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666
66666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666
66666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666
66666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666
66666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666
66666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666
66666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666
66666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666
66666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666
66666666666666666666666666666666666666666666666666666666666666666666661111166666666666666666666666666666666666666666666666666666
66666666666666666666666666666666666666666666666666666666665555555555511111111166666666666666666666666666666666666666666666666666
66666666666666666666666666666666666666666666666666666555555555555555111111111111666666666666666666666666666666666666666666666666
66666666666666666666666666666666666666666666666665555555555555555551111111111111111666666666666666666666666666666666666666666666
66666666666666666666666666666666666666666666666555555555555555555551111111111111111116666666666666666666666666666666666666666666
66666666666666666666666666666666666666666666555555555555555555555551111111111111111111116666666666666666666666666666666666666666
66666666666666666666666666666666666666666655555555555555555555555551111111111111111111111166666666666666666666666666666666666666
66666666666666666666666666666666666666666555555555555555555555555551111111111111111111111116666666666666666666666666666666666666
66666666666666666666666666666666666666655555555555555555555555555555111111111111111111111111666666666666666666666666666666666666
66666666666666666666666666666666666666555555555555555555555555555555511111111111111111111111166666666666666666666666666666666666
66666666666666666666666666666666666655555555555555555555556666666666661111111111111111111111116666666666666666666666666666666666
66666666666666666666666666666666666555555555555555555566666666666666666661111111111111111111111166666666666666666666666666666666
66666666666666666666666666666666665555555555555555566666666666666666666666611111111111111111111116666666666666666666666666666666
66666666666666666666666666666666655555555555555556666666666666666666666666666611111111111111111111666666666666666666666666666666
66666666666666666666666666666666555555555555555666666666666666666666666666666666111111111111111111166666666666666666666666666666
66666666666666666666666666666665555555555555566666666666666666666666666666666666666111111111111111116666666666666666666666666666
66666666666666666666666666666655555555555556666666666666666666666666666666666666666661111111111111111666666666666666666666666666
66666666666666666666666666666555555555555566666666666666666666666666666666666666666666111111111111111166666666666666666666666666
66666666666666666666666666665555555555555666666666666666666666666666666666666666666666611111111111111116666666666666666666666666
66666666666666666666666666655555555555566666666666666666666666666666666666666666666666661111111111111116666666666666666666666666
66666666666666666666666666555555555555666666666666666666666666666666666666666666666666666111111111111111666666666666666666666666
66666666666666666666666666555555555556666666666666666666666666666666666666666666666666666661111111111111166666666666666666666666
66666666666666666666666665555555555566666666666666666666666666666666666666666666666666666666111111111111166666666666666666666666
66666666666666666666666655555555555666666666666666666666666666666666666666666666666666666666611111111111166666666666666666666666
66666666666666666666666655555555555666666666666666666666666666666666666666666666666666666666661111111111166666666666666666666666
66666666666666666666666555555555556666666666666666666666666666666666666666666666666666666666661111111111156666666666666666666666
66666666666666666666665555555555566666666666666666666666666666666666666666666666666666666666666111111111555666666666666666666666
66666666666666666666665555555555666666666666666666666666666666666666666666666666666666666666666611111115555666666666666666666666
66666666666666666666655555555555666666666666666666666666666666666666666666666666666666666666666661111155555566666666666666666666
66666666666666666666655555555556666666666666666666666666666666666666666666666666666666666666666666555555555566666666666666666666
66666666666666666666655555555556666666666666666666666666666666666666666666666666666666666666666666555555555566666666666666666666
66666666666666666666555555555566666666666666666666666666666666666666666666666666666666666666666666655555555556666666666666666666
66666666666666666666555555555566666666666666666666666666666666666666666666666666666666666666666666655555555556666666666666666666
66666666666666666665555555555666666666666666666666666666666666666666666666666666666666666666666666665555555555666666666666666666
66666666666666666665555555555666666666666666666666666666666666666666666666666666666666666666666666665555555555666666666666666666
66666666666666666665555555556666666666666666666666666666666666666666666666666666666666666666666666666555555555666666666666666666
66666666666666666665555555556666666666666666666666666666666666666666666666666666666666666666666666666555555555666666666666666666
66666666666666666655555555556666666666666666666666666666666666666666666666666666666666666666666666666555555555566666666666666666
66666666666666666655555555566666666666666666666666666666666666666666666666666666666666666666666666666655555555566666666666666666
66666666666666666655555555566666666666666666666666666666666666666666666666666666666666666666666666666655555555566666666666666666
66666666666666666655555555566666666666666666666666666666666666666666666666666666666666666666666666666655555555566666666666666666
66666666666666666655555555566666666666666666666666666666666666666666666666666666666666666666666666666655555555566666666666666666
66666666666666666555555555666666666666666666666666666666666666666666666666666666666666666666666666666665555555556666666666666666
66666666666666666555555555666666666666666666666666666666666666666666666666666666666666666666666666666665555555556666666666666666
66666666666666666555555555666666666666666666666666666666666666666666666666666666666666666666666666666665555555556666666666666666
66666666666666666555555555666666666666666666666666666666666666666666666666666666666666666666666666666665555555556666666666666666
66666666666666666555555555666666666666666666666666666666666666666666666666666666666666666666666666666665555555556666666666666666
66666666666666666555555555666666666666666666666666666666666666666666666666666666666666666666666666666665555555556666666666666666
66666666666666666555555555666666666666666666666666666666666666666666666666666666666666666666666666666665555555556666666666666666
66666666666666666555555555666666666666666666666666666666666666666666666666666666666666666666666666666665555555556666666666666666
66666666666666666555555555666666666666666666666666666666666666666666666666666666666666666666666666666665555555556666666666666666
66666666666666666555555555666666666666666666666666666666666666666666666666666666666666666666666666666665555555556666666666666666
66666666666666666555555555666666666666666666666666666666666666666666666666666666666666666666666666666665555555556666666666666666
66666666666666666555555555666666666666666666666666666666666666666666666666666666666666666666666666666665555555556666666666666666
66666666666666666555555555666666666666666666666666666666666666666666666666666666666666666666666666666665555555556666666666666666
66666666666666666655555555566666666666666666666666666666666666666666666666666666666666666666666666666655555555566666666666666666
66666666666666666655555555566666666666666666666666666666666666666666666666666666666666666666666666666655555555566666666666666666
66666666666666666655555555566666666666666666666666666666666666666666666666666666666666666666666666666655555555566666666666666666
66666666666666666655555555566666666666666666666666666666666666666666666666666666666666666666666666666655555555566666666666666666
66666666666666666655555555556666666666666666666666666666666666666666666666666666666666666666666666666555555555566666666666666666
66666666666666666665555555556666666666666666666666666666666666666666666666666666666666666666666666666555555555666666666666666666
66666666666666666665555555556666666666666666666666666666666666666666666666666666666666666666666666666555555555666666666666666666
66666666666666666665555555555666666666666666666666666666666666666666666666666666666666666666666666665555555555666666666666666666
66666666666666666665555555555666666666666666666666666666666666666666666666666666666666666666666666665555555555666666666666666666
66666666666666666666555577755566666666666666666666666666666666666666666666666666666666666666666666655555555556666666666666666666
66666666666666666666555777775566666666666666666666666666666666666666666666666666666666666666666666655555555556666666666666666666
66666666666666666666657777777556666666666666666666666666666666666666666666666666666666666666666666555555555566666666666666666666
66666666666666666666657777777556666666666666666666666666666666666666666666666666666666666666666666555555555566666666666666666666
66666666666666666666657777777555666666666666666666666666666666666666666666666666666666666666666665555555555566666666666666666666
66666666666666666666665777775555666666666666666666666666666666666666666666666666666666666666666665555555555666666666666666666666
66666666666666666666665577755555566666666666666666666666666666666666666666666666666666666666666655555555555666666666666666666666
66666666666666666666666555555555556666666666666666666666666666666666666666666666666666666666666555555555556666666666666666666666
66666666666666666666666655555555555666666666666666666666666666666666666666666666666666666666665555555555566666666666666666666666
66666666666666666666666655555555555666666666666666666666666666666666666666666666666666666666665555555555566666666666666666666666
66666666666666666666666665555555555566666666666666666666666666666666666666666666666666666666655555555555666666666666666666666666
66666666666666666666666666555555555556666666666666666666666666666666666666666666666666666666555555555556666666666666666666666666
66666666666666666666666666555555555555666666666666666666666666666666666666666666666666666665555555555556666666666666666666666666
66666666666666666666666666655555555555566666666666666666666666666666666666666666666666666655555555555566666666666666666666666666
66666666666666666666666666665555555555555666666666666666666666666666666666666666666666665555555555555666666666666666666666666666
66666666666666666666666666666555555555555566666666666666666666666666666666666666666666655555555555556666666666666666666666666666
66666666666666666666666666666655555555555556666666666666666666666666666666666666666666555555555555566666666666666666666666666666
66666666666666666666666666666665555555555555566666666666666666666666666666666666666655555555555555666666666666666666666666666666
66666666666666666666666666666666555555555555555666666666666666666666666666666666665555555555555556666666666666666666666666666666
66666666666666666666666666666666655555555555555556666666666666666666666666666666555555555555555566666666666666666666666666666666
66666666666666666666666666666666665555555555555555566666666666666666666666666655555555555555555666666666666666666666666666666666
66666666666666666666666666666666666555555555555555555566666666666666666666655555555555555555556666666666666666666666666666666666
66666666666666666666666666666666666655555555555555555555556666666666666555555555555555555555566666666666666666666666666666666666
66666666666666666666666666666666666666555555555555555555555555555555555555555555555555555556666666666666666666666666666666666666
66666666666666666666666666666666666666655555555555555555555555555555555555555555555555555566666666666666666666666666666666666666
66666666666666666666666666666666666666666555555555555555555555555555555555555555555555556666666666666666666666666666666666666666
66666666666666666666666666666666666666666655555555555555555555555555555555555555555555566666666666666666666666666666666666666666
66666666666666666666666666666666666666666666555555555555555555555555555555555555555556666666666666666666666666666666666666666666
66666666666666666666666666666666666666666666666555555555555555555555555555555555556666666666666666666666666666666666666666666666
66666666666666666666666666666666666666666666666665555555555555555555555555555555666666666666666666666666666666666666666666666666
66666666666666666666666666666666666666666666666666666555555555555555555555556666666666666666666666666666666666666666666666666666
66666666666666666666666666666666666666666666666666666666665555555555555666666666666666666666666666666666666666666666666666666666
66666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666
66666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666
66666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666
66666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666
66666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666
66666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666
66666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666
66666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666
66666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666
66666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666

__map__
0101010101010101010101010101010101010101010101010101010101010101010101010101010100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0101010101010101010101010101010101010101010101010101010101010101010101010101010100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0101010101010101010101010101010101010101010101010101010101010101010101010101010100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0101010101010101010101010101010101010101010101010101010101010101010101010101010100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0101010101010101010101010101010101010101010101010101010101010101010101010101010100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0101010101010101010101010101010101010101010101010101010101010101010101010101010100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0101010101010101010101010101010101010101010101010101010101010101010101010101010100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0101010101010101010101010101010101010101010101010101010101010101010101010101010100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0101010101010101010101010101010101010101010101010101010101010101010101010101010100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0101010101010101010101010101010101010101010101010101010101010101010101010101010100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0101010101010101010101010101010101010101010101010101010101010101010101010101010100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0101010101010101010101010101010101010101010101010101010101010101010101010101010100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0101010101010101010101010101010101010101010101010101010101010101010101010101010100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0101010101010101010101010101010101010101010101010101010101010101010101010101010100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0101010101010101010101010101010101010101010101010101010101010101010101010101010100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0101010101010101010101010101010101010101010101010101010101010101010101010101010100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0101010101010101010101010101010101010101010101010101010101010101010101010101010100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0101010101010101010101010101010101010101010101010101010101010101010101010101010100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0101010101010101010101010101010101010101010101010101010101010101010101010101010100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0101010101010101010101010101010101010101010101010101010101010101010101010101010100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0101010101010101010101010101010101010101010101010101010101010101010101010101010100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0101010101010101010101010101010101010101010101010101010101010101010101010101010100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0101010101010101010101010101010101010101010101010101010101010101010101010101010100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0101010101010101010101010101010101010101010101010101010101010101010101010101010100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0101010101010101010101010101010101010101010101010101010101010101010101010101010100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0101010101010101010101010101010101010101010101010101010101010101010101010101010100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0101010101010101010101010101010101010101010101010101010101010101010101010101010100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0101010101010101010101010101010101010101010101010101010101010101010101010101010100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0101010101010101010101010101010101010101010101010101010101010101010101010101010100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0101010101010101010101010101010101010101010101010101010101010101010101010101010100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0101010101010101010101010101010101010101010101010101010101010101010101010101010100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0101010101010101010101010101010101010101010101010101010101010101010101010101010100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__sfx__
000100003765037600006000060000600006000060000600006000060000600006000060000600006000060000600006000060000600006000060000600006000060000600006000060000600006000060000600
000600000d15002150021500215002150001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100
001000001a0501c050200502105021050210502105000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000400000b1500c15010150101500a150011000510005100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100
