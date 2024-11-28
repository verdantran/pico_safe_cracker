levels = {
    {
        id = 0,
        dials = {
            {
                target = {
                    --the ball
                    x = -50,
                    y = -50,

                    --==target properties==
                    angle = 0,
                    -- the current speed
                    angle_speed = 0.005,
                    --the original speed (so that we can reset)
                    angle_base_speed = 0.005,
                    --the amount to increase by each time
                    angle_speed_step = 0.003,
                    --controls the radius of the target and the win zone
                    radius = 43
                },
                win_zone = {
                    --==win zone==
                    length = 15,
                    base_length = 15,
                    length_reduction_step = 3,
                    size=5,
                    angle=0,
                },
                config = {
                    --the absolute centre of the dial
                    cx = 64,
                    cy = 70,
                    radius=47,
                    inner_radius=38,

                    rotate_clockwise = true,

                    --amount of locks required to solve this dial
                    total_locks = 3,
                    cur_lock = 0,
                    solved = false,

                    game_over=false,
                    -- Global table to store win area positions
                    win_positions = {},
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
            dialog:queue("so you want to be a safe cracker, eh? just so happens our last guy got busted yesterday")
            dialog:queue("tell you what. we'll put you on an easy job and if you pass that then we may just keep you on...")
            dialog:queue("above you right now there's a cirlce. the dial will start turning and all you gotta do is press ❎ when the white dial is in the blue zone.")
            dialog:queue("do that three times and the safe will be cracked.")
            -- dialog:queue("one button, that's all! one of our tech guys made this device that at the press of a button activates electromag- ")
            -- dialog:queue("actually")
            -- dialog:queue("nevermind")
            -- dialog:queue("i've said too much.")
            dialog:queue("anyway, just remember the cops will be on their way as soon as the timer starts, so be quick! i've lost enough people as it is.")
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
                    --the ball
                    x = -50,
                    y = -50,

                    --==target properties==
                    angle = 0,
                    -- the current speed
                    angle_speed = 0.007,
                    --the original speed (so that we can reset)
                    angle_base_speed = 0.007,
                    --the amount to increase by each time
                    angle_speed_step = 0.003,
                    --controls the radius of the target and the win zone
                    radius = 43
                },
                win_zone = {
                    --==win zone==
                    length = 15,
                    base_length = 15,
                    length_reduction_step = 3,
                    size=5,
                    angle=0,
                },
                config = {
                    --the absolute centre of the dial
                    cx = 64,
                    cy = 70,
                    radius=47,
                    inner_radius=38,

                    rotate_clockwise = true,

                    --amount of locks required to solve this dial
                    total_locks = 3,
                    cur_lock = 0,
                    solved = false,

                    game_over=false,
                    -- Global table to store win area positions
                    win_positions = {},
                },
                indicator={
                    x=40,
                    y=8,
                    spacer=10,
                },
                timer={
                    time=10,
                    x=54,
                    y=67,
                    active=true,
                }
            }
        },
        queue_level_start_dialog=function()
            dialog:queue("give this one a whirl, you'll have less time and a it's a bit quicker")
        end,
        queue_completed_dialog=function()
            dialog:queue("good work.")
        end,
        queue_failed_dialog=function()
            dialog:queue("busted! press ❎ to restart.")
        end,
    },
    {
        id = 2,
        dials = {
            {
                target = {
                    --the ball
                    x = -50,
                    y = -50,

                    --==target properties==
                    angle = 0,
                    -- the current speed
                    angle_speed = 0.005,
                    --the original speed (so that we can reset)
                    angle_base_speed = 0.005,
                    --the amount to increase by each time
                    angle_speed_step = 0.006,
                    --controls the radius of the target and the win zone
                    radius = 23
                },
                win_zone = {
                    --==win zone==
                    length = 15,
                    base_length = 15,
                    length_reduction_step = 3,
                    size=3,
                    angle=0,
                },
                config = {
                    --the absolute centre of the dial
                    cx = 34,
                    cy = 70,
                    radius=25,
                    inner_radius=20,

                    rotate_clockwise = true,

                    --amount of locks required to solve this dial
                    total_locks = 3,
                    cur_lock = 0,
                    solved = false,

                    -- Global table to store win area positions
                    win_positions = {},
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
                    --the ball
                    x = -50,
                    y = -50,

                    --==target properties==
                    angle = 0,
                    -- the current speed
                    angle_speed = 0.005,
                    --the original speed (so that we can reset)
                    angle_base_speed = 0.005,
                    --the amount to increase by each time
                    angle_speed_step = 0.006,
                    --controls the radius of the target and the win zone
                    radius = 23
                },
                win_zone = {
                    --==win zone==
                    length = 15,
                    base_length = 15,
                    length_reduction_step = 3,
                    size=3,
                    angle=0.3,
                },
                config = {
                    --the absolute centre of the dial
                    cx = 94,
                    cy = 70,
                    radius=25,
                    inner_radius=20,

                    rotate_clockwise = true,

                    --amount of locks required to solve this dial
                    total_locks = 3,
                    cur_lock = 0,
                    solved = false,

                    -- Global table to store win area positions
                    win_positions = {},
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
            dialog:queue("well done on the last job.")
            dialog:queue("now, this ones a little trickier. looks like they've added some more security.")
            dialog:queue("you'll have to try and solve both before their timers run out.")
            dialog:queue("focus on the one with the least time first, then move to the next.")
        end,
        queue_completed_dialog=function()
            dialog:queue("looks like you're getting the hang of this.")
        end,
        queue_failed_dialog=function()
            dialog:queue("busted! press ❎ to restart.")
        end,
    },
    {
        id = 3,
        dials = {
            {
                target = {
                    --the ball
                    x = -50,
                    y = -50,

                    --==target properties==
                    angle = 0,
                    -- the current speed
                    angle_speed = 0.005,
                    --the original speed (so that we can reset)
                    angle_base_speed = 0.005,
                    --the amount to increase by each time
                    angle_speed_step = 0.006,
                    --controls the radius of the target and the win zone
                    radius = 23
                },
                win_zone = {
                    --==win zone==
                    length = 15,
                    base_length = 15,
                    length_reduction_step = 3,
                    size=3,
                    angle=0,
                },
                config = {
                    --the absolute centre of the dial
                    cx = 34,
                    cy = 70,
                    radius=25,
                    inner_radius=20,

                    rotate_clockwise = true,

                    --amount of locks required to solve this dial
                    total_locks = 3,
                    cur_lock = 0,
                    solved = false,

                    -- Global table to store win area positions
                    win_positions = {},
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
                    --the ball
                    x = -50,
                    y = -50,

                    --==target properties==
                    angle = 0,
                    -- the current speed
                    angle_speed = 0.005,
                    --the original speed (so that we can reset)
                    angle_base_speed = 0.005,
                    --the amount to increase by each time
                    angle_speed_step = 0.006,
                    --controls the radius of the target and the win zone
                    radius = 23
                },
                win_zone = {
                    --==win zone==
                    length = 15,
                    base_length = 15,
                    length_reduction_step = 3,
                    size=3,
                    angle=0.3,
                },
                config = {
                    --the absolute centre of the dial
                    cx = 94,
                    cy = 70,
                    radius=25,
                    inner_radius=20,

                    rotate_clockwise = true,

                    --amount of locks required to solve this dial
                    total_locks = 3,
                    cur_lock = 0,
                    solved = false,

                    -- Global table to store win area positions
                    win_positions = {},
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
            dialog:queue("give this one a shot.")
        end,
        queue_completed_dialog=function()
            dialog:queue("nice one.")
        end,
        queue_failed_dialog=function()
            dialog:queue("busted! press ❎ to restart.")
        end,
    },
}