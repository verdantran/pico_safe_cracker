levels = {
    {
        id = 0,
        dials = {
            {
                target = {
                    --the ball
                    x = 0,
                    y = 0,

                    --==target properties==
                    angle = 0,
                    -- the current speed
                    angle_speed = 0.005,
                    --the original speed (so that we can reset)
                    angle_base_speed = 0.005,
                    --the amount to increase by each time
                    angle_speed_step = 0.006,
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

                    -- Global table to store win area positions
                    win_positions = {},
                },
                indicator={
                    x=40,
                    y=5,
                    spacer=10,
                },
            }
        }
    },
    {
        id = 1,
        dials = {
            {
                target = {
                    --the ball
                    x = 0,
                    y = 0,

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
                    y=5,
                    spacer=10,
                },
            },
            {
                target = {
                    --the ball
                    x = 0,
                    y = 0,

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
                    y=5,
                    spacer=10,
                },
            }
        }
    },
}