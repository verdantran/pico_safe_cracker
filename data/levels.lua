levels = {
    {
        id = 0,
        dials = {
            {
                target = {
                    x = -50,
                    y = -50,
                    angle = 0,
                    angle_speed = 0.007,
                    angle_base_speed = 0.007,
                    angle_speed_step = 0.003,
                    radius = 43,
                    size=3
                },
                win_zone = {
                    length = 15,
                    base_length = 15,
                    length_reduction_step = 3,
                    size=5,
                    angle=0,
                },
                config = {
                    cx = 64,
                    cy = 70,
                    radius=47,
                    inner_radius=38,
                    rotate_clockwise = true,
                    total_locks = 3,
                    cur_lock = 0,
                    solved = false,
                    game_over=false,
                    win_positions = {},
                    initial_reset_done=false
                },
                indicator={
                    x=40,
                    y=8,
                    spacer=10,
                },
                timer={
                    time=15,
                    x=54,
                    y=67,
                    active=true,
                }
            }
        },
        queue_level_start_dialog=function()
            dialog:queue("so, you want to be a safecracker? good timing-our last guy got busted yesterday.")
            dialog:queue("my names baz. we'll start you off easy. crack this safe, and maybe we'll keep you around.")
            dialog:queue("above you is a circle. when the white dial hits the blue zone, press ❎.")
            dialog:queue("hit it three times, and the safe's yours.")
            dialog:queue("oh, and the cops will be on their way once the timer starts, so don't waste time!")
            dialog:queue("good luck.")
        end,
        queue_completed_dialog=function()
            dialog:queue("looks like we found our new safe cracker!")
        end,
        queue_failed_dialog=function()
            dialog:queue("busted! press ❎ to restart.")
        end,
    },
    {
        id = 1,
        dials = {
            {
                target = {
                    x = -50,
                    y = -50,
                    angle = 0,
                    angle_speed = 0.007,
                    angle_base_speed = 0.007,
                    angle_speed_step = 0.003,
                    radius = 43,
                    size=3
                },
                win_zone = {
                    length = 15,
                    base_length = 15,
                    length_reduction_step = 3,
                    size=5,
                    angle=0,
                },
                config = {
                    cx = 64,
                    cy = 70,
                    radius=47,
                    inner_radius=38,
                    rotate_clockwise = true,
                    total_locks = 3,
                    cur_lock = 0,
                    solved = false,
                    game_over=false,
                    win_positions = {},
                    initial_reset_done=false,
                },
                indicator={
                    x=40,
                    y=8,
                    spacer=10,
                },
                timer={
                    time=10,
                    x=56,
                    y=67,
                    active=true,
                }
            }
        },
        queue_level_start_dialog=function()
            dialog:queue("alright, rookie! time for the real deal.")
            dialog:queue("this safe belongs to baron von mustache. word is, he kept his priceless mustache wax formula in there. don't mess this up!")
        end,
        queue_completed_dialog=function()
            dialog:queue("ha! i knew you had it in you! what's in there?")
            dialog:queue("…wait.")
            dialog:queue("is that just a stick of gum? never mind, on to the next!")
        end,
        queue_failed_dialog=function()
            dialog:queue("we've been caught! press ❎ to restart.")
        end,
    },
    {
        id = 2,
        dials = {
            {
                target = {
                    x = -50,
                    y = -50,
                    angle = 0,
                    angle_speed = 0.007,
                    angle_base_speed = 0.007,
                    angle_speed_step = 0.003,
                    radius = 43,
                    size=3
                },
                win_zone = {
                    length = 15,
                    base_length = 15,
                    length_reduction_step = 3,
                    size=5,
                    angle=0,
                },
                config = {
                    cx = 64,
                    cy = 70,
                    radius=47,
                    inner_radius=38,

                    rotate_clockwise = true,
                    total_locks = 4,
                    cur_lock = 0,
                    solved = false,
                    game_over=false,
                    win_positions = {},
                    initial_reset_done=false,
                },
                indicator={
                    x=35,
                    y=8,
                    spacer=10,
                },
                timer={
                    time=10,
                    x=56,
                    y=67,
                    active=true,
                }
            }
        },
        queue_level_start_dialog=function()
            dialog:queue("alright, this one's tougher-less time and an extra lock.")
            dialog:queue("you've got to crack four locks before the timer runs out. no pressure, right?")
            dialog:queue("just stay focused. white dial, blue zone, ❎. you know the drill.")
            dialog:queue("don't let me down. we're counting on you.")
        end,
        queue_completed_dialog=function()
            dialog:queue("nailed it! easy.")
            dialog:queue("hey, look! a scratch card!")
        end,
        queue_failed_dialog=function()
            dialog:queue("too slow! the timer ran out, and the cops are all over us.")
            dialog:queue("press ❎ to give it another shot. we don't leave jobs half-finished.")
        end,
    },
    {
        id = 3,
        dials = {
            {
                target = {
                    x = -50,
                    y = -50,
                    angle = 0,
                    angle_speed = 0.007,
                    angle_base_speed = 0.007,
                    angle_speed_step = 0.006,
                    radius = 23,
                    size=3
                },
                win_zone = {
                    length = 15,
                    base_length = 15,
                    length_reduction_step = 3,
                    size=3,
                    angle=0,
                },
                config = {
                    cx = 34,
                    cy = 70,
                    radius=25,
                    inner_radius=20,

                    rotate_clockwise = true,
                    total_locks = 3,
                    cur_lock = 0,
                    solved = false,
                    win_positions = {},
                    initial_reset_done=false,
                },
                indicator={
                    x=10,
                    y=30,
                    spacer=10,
                },
                timer={
                    time=7,
                    x=28,
                    y=67,
                    active=true,
                }
            },
            {
                target = {
                    x = -50,
                    y = -50,
                    angle = 0,
                    angle_speed = 0.007,
                    angle_base_speed = 0.007,
                    angle_speed_step = 0.006,
                    radius = 23,
                    size=3
                },
                win_zone = {
                    length = 15,
                    base_length = 15,
                    length_reduction_step = 3,
                    size=3,
                    angle=0.3,
                },
                config = {
                    cx = 94,
                    cy = 70,
                    radius=25,
                    inner_radius=20,
                    rotate_clockwise = true,
                    total_locks = 3,
                    cur_lock = 0,
                    solved = false,
                    win_positions = {},
                    initial_reset_done=false,
                },
                indicator={
                    x=70,
                    y=30,
                    spacer=10,
                },
                timer={
                    time=10,
                    x=88,
                    y=67,
                    active=true,
                },
            }
        },
        queue_level_start_dialog=function()
            dialog:queue("this one's no joke. the safe's owner is paranoid. double locks, double trouble.")
            dialog:queue("remember, it's not about speed... except when there's a timer. so, uh, be fast.")
        end,
        queue_completed_dialog=function()
            dialog:queue("looks like you're getting the hang of this, lets see...")
            dialog:queue("a rubber duck?! what's next, a bathtub in a safe?")
        end,
        queue_failed_dialog=function()
            dialog:queue("oops. good thing no one saw that. oh, wait. everyone did.")
            dialog:queue("press ❎ to restart")
        end,
    },
    {
        id = 4,
        dials = {
            {
                target = {
                    x = -50,
                    y = -50,
                    angle = 0,
                    angle_speed = 0.007,
                    angle_base_speed = 0.007,
                    angle_speed_step = 0.006,
                    radius = 23,
                    size=3
                },
                win_zone = {
                    length = 15,
                    base_length = 15,
                    length_reduction_step = 3,
                    size=3,
                    angle=0,
                },
                config = {
                    cx = 34,
                    cy = 70,
                    radius=25,
                    inner_radius=20,
                    rotate_clockwise = true,
                    total_locks = 3,
                    cur_lock = 0,
                    solved = false,
                    win_positions = {},
                    initial_reset_done=false,
                },
                indicator={
                    x=10,
                    y=30,
                    spacer=10,
                },
                timer={
                    time=7,
                    x=28,
                    y=67,
                    active=true,
                }
            },
            {
                target = {
                    x = -50,
                    y = -50,
                    angle = 0,
                    angle_speed = 0.007,
                    angle_base_speed = 0.007,
                    angle_speed_step = 0.006,
                    radius = 23,
                    size=3
                },
                win_zone = {
                    length = 15,
                    base_length = 15,
                    length_reduction_step = 3,
                    size=3,
                    angle=0.3,
                },
                config = {
                    cx = 94,
                    cy = 70,
                    radius=25,
                    inner_radius=20,
                    rotate_clockwise = true,
                    total_locks = 3,
                    cur_lock = 0,
                    solved = false,
                    win_positions = {},
                    initial_reset_done=false,
                },
                indicator={
                    x=70,
                    y=30,
                    spacer=10,
                },
                timer={
                    time=10,
                    x=88,
                    y=67,
                    active=true,
                },
            }
        },
        queue_level_start_dialog=function()
            dialog:queue("ok so i know that the pay off's haven't been great lately.")
            dialog:queue("but i got a good feeling about this one.")
            dialog:queue("do your thing.")
        end,
        queue_completed_dialog=function()
            dialog:queue("oh hey look, it's the wrapper from the chewing gum we found the other day")
        end,
        queue_failed_dialog=function()
            dialog:queue("busted! press ❎ to restart.")
        end,
    },
    {
        id = 5,
        dials = {
            {
                target = {
                    x = -50,
                    y = -50,
                    angle = 0,
                    angle_speed = 0.007,
                    angle_base_speed = 0.007,
                    angle_speed_step = 0.008,
                    radius = 23,
                    size=3
                },
                win_zone = {
                    length = 15,
                    base_length = 15,
                    length_reduction_step = 3,
                    size=3,
                    angle=0,
                },
                config = {
                    cx = 34,
                    cy = 70,
                    radius=25,
                    inner_radius=20,
                    rotate_clockwise = true,
                    total_locks = 3,
                    cur_lock = 0,
                    solved = false,
                    win_positions = {},
                    initial_reset_done=false,
                },
                indicator={
                    x=10,
                    y=30,
                    spacer=10,
                },
                timer={
                    time=5,
                    x=28,
                    y=67,
                    active=true,
                }
            },
            {
                target = {
                    x = -50,
                    y = -50,
                    angle = 0,
                    angle_speed = 0.007,
                    angle_base_speed = 0.007,
                    angle_speed_step = 0.006,
                    radius = 23,
                    size=3
                },
                win_zone = {
                    length = 15,
                    base_length = 15,
                    length_reduction_step = 3,
                    size=3,
                    angle=0.3,
                },
                config = {
                    cx = 94,
                    cy = 70,
                    radius=25,
                    inner_radius=20,
                    rotate_clockwise = true,
                    total_locks = 4,
                    cur_lock = 0,
                    solved = false,
                    win_positions = {},
                    initial_reset_done=false,
                },
                indicator={
                    x=65,
                    y=30,
                    spacer=10,
                },
                timer={
                    time=9,
                    x=88,
                    y=67,
                    active=true,
                },
            }
        },
        queue_level_start_dialog=function()
            dialog:queue("i wonder who made the first ever safe...")
        end,
        queue_completed_dialog=function()
            dialog:queue("aha! told you to trust me.")
            dialog:queue("lets see what we've got here....")
            dialog:queue("a map? interesting. looks like it's pointing us to our next job.")
            dialog:queue("get your passport ready, we've got a flight to catch.")
        end,
        queue_failed_dialog=function()
            dialog:queue("busted! press ❎ to restart.")
        end,
    },
    {
        id = 6,
        dials = {
            {
                target = {
                    x = -50,
                    y = -50,
                    angle = 0,
                    angle_speed = 0.007,
                    angle_base_speed = 0.007,
                    angle_speed_step = 0.008,
                    radius = 16,
                    size=2
                },
                win_zone = {
                    length = 15,
                    base_length = 15,
                    length_reduction_step = 3,
                    size=2,
                    angle=0,
                },
                config = {
                    cx = 34,
                    cy = 38,
                    radius=18,
                    inner_radius=13,
                    rotate_clockwise = true,
                    total_locks = 3,
                    cur_lock = 0,
                    solved = false,
                    win_positions = {},
                    initial_reset_done=false,
                },
                indicator={
                    x=10,
                    y=10,
                    spacer=10,
                },
                timer={
                    time=7,
                    x=27.5,
                    y=35.8,
                    active=true,
                }
            },
            {
                target = {
                    x = -50,
                    y = -50,
                    angle = 0,
                    angle_speed = 0.007,
                    angle_base_speed = 0.007,
                    angle_speed_step = 0.008,
                    radius = 16,
                    size=2
                },
                win_zone = {
                    length = 15,
                    base_length = 15,
                    length_reduction_step = 3,
                    size=2,
                    angle=0,
                },
                config = {
                    cx = 90,
                    cy = 38,
                    radius=18,
                    inner_radius=13,
                    rotate_clockwise = true,
                    total_locks = 3,
                    cur_lock = 0,
                    solved = false,
                    win_positions = {},
                    initial_reset_done=false,
                },
                indicator={
                    x=67,
                    y=10,
                    spacer=10,
                },
                timer={
                    time=8,
                    x=83,
                    y=35.8,
                    active=true,
                }
            },
            {
                target = {
                    x = -50,
                    y = -50,
                    angle = 0,
                    angle_speed = 0.007,
                    angle_base_speed = 0.007,
                    angle_speed_step = 0.008,
                    radius = 16,
                    size=2
                },
                win_zone = {
                    length = 15,
                    base_length = 15,
                    length_reduction_step = 3,
                    size=2,
                    angle=0,
                },
                config = {
                    cx = 62,
                    cy = 100,
                    radius=18,
                    inner_radius=13,

                    rotate_clockwise = true,
                    total_locks = 3,
                    cur_lock = 0,
                    solved = false,
                    win_positions = {},
                    initial_reset_done=false,
                },
                indicator={
                    x=38.5,
                    y=70,
                    spacer=10,
                },
                timer={
                    time=12,
                    x=56,
                    y=97,
                    active=true,
                }
            },
        },
        queue_level_start_dialog=function()
            dialog:queue("here we are. cozy little town... if you ignore the sub-zero temperatures.")
            dialog:queue("you know, the map could've led us somewhere warm... a beach safe would've been nice.")
            dialog:queue("but no, we're cracking safes in a freezer. lucky us.")
            dialog:queue("anyway, the safe's nearby. stay sharp, stay warm, and let's get this over with.")
            dialog:queue("and remember-gloves off for safecracking! can't have frostbite slowing you down.")
        end,
        queue_completed_dialog=function()
            dialog:queue("ha! safe cracked, and you didn't even freeze your fingers off. nice work.")
            dialog:queue("what's in here...? a... ladder?")
            dialog:queue("the plot thickens, come on, lets see what's down there")
        end,
        queue_failed_dialog=function()
            dialog:queue("ugh, too slow! you let the cold get to you, didn't you?")
            dialog:queue("press ❎ to try again, unless you'd rather stay here and become an ice sculpture.")
        end,
    },
    {
        id = 7,
        dials = {
            {
                target = {
                    x = -50,
                    y = -50,
                    angle = 0,
                    angle_speed = 0.007,
                    angle_base_speed = 0.007,
                    angle_speed_step = 0.008,
                    radius = 16,
                    size=2
                },
                win_zone = {
                    length = 15,
                    base_length = 15,
                    length_reduction_step = 3,
                    size=2,
                    angle=0,
                },
                config = {
                    cx = 34,
                    cy = 38,
                    radius=18,
                    inner_radius=13,
                    rotate_clockwise = true,
                    total_locks = 3,
                    cur_lock = 0,
                    solved = false,
                    win_positions = {},
                    initial_reset_done=false,
                },
                indicator={
                    x=10,
                    y=10,
                    spacer=10,
                },
                timer={
                    time=5,
                    x=27.5,
                    y=35.8,
                    active=true,
                }
            },
            {
                target = {
                    x = -50,
                    y = -50,
                    angle = 0,
                    angle_speed = 0.007,
                    angle_base_speed = 0.007,
                    angle_speed_step = 0.008,
                    radius = 16,
                    size=2
                },
                win_zone = {
                    length = 15,
                    base_length = 15,
                    length_reduction_step = 3,
                    size=2,
                    angle=0,
                },
                config = {
                    cx = 90,
                    cy = 38,
                    radius=18,
                    inner_radius=13,
                    rotate_clockwise = true,
                    total_locks = 3,
                    cur_lock = 0,
                    solved = false,
                    win_positions = {},
                    initial_reset_done=false,
                },
                indicator={
                    x=67,
                    y=10,
                    spacer=10,
                },
                timer={
                    time=6,
                    x=83,
                    y=35.8,
                    active=true,
                }
            },
            {
                target = {
                    x = -50,
                    y = -50,
                    angle = 0,
                    angle_speed = 0.007,
                    angle_base_speed = 0.007,
                    angle_speed_step = 0.008,
                    radius = 16,
                    size=2
                },
                win_zone = {
                    length = 15,
                    base_length = 15,
                    length_reduction_step = 3,
                    size=2,
                    angle=0,
                },
                config = {
                    cx = 62,
                    cy = 100,
                    radius=18,
                    inner_radius=13,
                    rotate_clockwise = true,
                    total_locks = 3,
                    cur_lock = 0,
                    solved = false,
                    win_positions = {},
                    initial_reset_done=false,
                },
                indicator={
                    x=38.5,
                    y=70,
                    spacer=10,
                },
                timer={
                    time=8,
                    x=56,
                    y=97,
                    active=true,
                }
            },
        },
        queue_level_start_dialog=function()
            dialog:queue("it's dark down here, got a torch?")
            dialog:queue("hey look, seems like someones repurposed this safe into a door, how convienient for us")
        end,
        queue_completed_dialog=function()
            dialog:queue("more tunnels...lets do this")
        end,
        queue_failed_dialog=function()
            dialog:queue("well, looks like the doors closed behind us")
            dialog:queue("press ❎ to try again, this place gives me the creeps.")
        end,
    },
    {
        id = 8,
        dials = {
            {
                target = {
                    x = -50,
                    y = -50,
                    angle = 0,
                    angle_speed = 0.009,
                    angle_base_speed = 0.009,
                    angle_speed_step = 0.008,
                    radius = 16,
                    size=2
                },
                win_zone = {
                    length = 15,
                    base_length = 15,
                    length_reduction_step = 3,
                    size=2,
                    angle=0,
                },
                config = {
                    cx = 34,
                    cy = 38,
                    radius=18,
                    inner_radius=13,
                    rotate_clockwise = true,
                    total_locks = 3,
                    cur_lock = 0,
                    solved = false,
                    win_positions = {},
                    initial_reset_done=false,
                },
                indicator={
                    x=10,
                    y=10,
                    spacer=10,
                },
                timer={
                    time=5,
                    x=27.5,
                    y=35.8,
                    active=true,
                }
            },
            {
                target = {
                    x = -50,
                    y = -50,
                    angle = 0,
                    angle_speed = 0.009,
                    angle_base_speed = 0.009,
                    angle_speed_step = 0.008,
                    radius = 16,
                    size=2
                },
                win_zone = {
                    length = 15,
                    base_length = 15,
                    length_reduction_step = 3,
                    size=2,
                    angle=0,
                },
                config = {
                    cx = 90,
                    cy = 38,
                    radius=18,
                    inner_radius=13,
                    rotate_clockwise = true,
                    total_locks = 3,
                    cur_lock = 0,
                    solved = false,
                    win_positions = {},
                    initial_reset_done=false,
                },
                indicator={
                    x=67,
                    y=10,
                    spacer=10,
                },
                timer={
                    time=6,
                    x=83,
                    y=35.8,
                    active=true,
                }
            },
            {
                target = {
                    x = -50,
                    y = -50,
                    angle = 0,
                    angle_speed = 0.009,
                    angle_base_speed = 0.009,
                    angle_speed_step = 0.008,
                    radius = 16,
                    size=2
                },
                win_zone = {
                    length = 15,
                    base_length = 15,
                    length_reduction_step = 3,
                    size=2,
                    angle=0,
                },
                config = {
                    cx = 34,
                    cy = 100,
                    radius=18,
                    inner_radius=13,
                    rotate_clockwise = true,
                    total_locks = 3,
                    cur_lock = 0,
                    solved = false,
                    win_positions = {},
                    initial_reset_done=false,
                },
                indicator={
                    x=10,
                    y=70,
                    spacer=10,
                },
                timer={
                    time=10,
                    x=27.5,
                    y=97,
                    active=true,
                }
            },
            {
                target = {
                    x = -50,
                    y = -50,
                    angle = 0,
                    angle_speed = 0.009,
                    angle_base_speed = 0.009,
                    angle_speed_step = 0.008,
                    radius = 16,
                    size=2
                },
                win_zone = {
                    length = 15,
                    base_length = 15,
                    length_reduction_step = 3,
                    size=2,
                    angle=0,
                },
                config = {
                    cx = 90,
                    cy = 100,
                    radius=18,
                    inner_radius=13,
                    rotate_clockwise = true,
                    total_locks = 3,
                    cur_lock = 0,
                    solved = false,
                    win_positions = {},
                    initial_reset_done=false,
                },
                indicator={
                    x=67,
                    y=70,
                    spacer=10,
                },
                timer={
                    time=10,
                    x=83,
                    y=97,
                    active=true,
                }
            },
        },
        queue_level_start_dialog=function()
            dialog:queue("this is it. the big one. this is where the map leads us")
            dialog:queue("according to the map there are untold riches inside this safe")
            dialog:queue("lets get it open!")
        end,
        queue_completed_dialog=function()
            dialog:queue("you've done it!")
            dialog:queue("there it is...")
        end,
        queue_failed_dialog=function()
            dialog:queue("try again! i'm not willing to give up on this one!")
            dialog:queue("press ❎ to try again.")
        end,
    },
    {
        id=9
    }
}