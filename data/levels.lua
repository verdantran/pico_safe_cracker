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
                    angle_base_speed = angle_speed,
                    --the amount to increase by each time
                    angle_speed_step = 0.006,
                    --controls the radius of the target and the win zone
                    radius = 43
                },
                win_zone = {
                    --==win zone==
                    size = 15,
                    base_size = size,
                    size_reduction_step = 3
                },
                config = {
                    --the absolute centre of the dial
                    cx = 64,
                    cy = 70,

                    rotate_clockwise = true,

                    --amount of locks required to solve this dial
                    total_locks = 3,
                    cur_lock = 0,
                    solved = false,

                    -- Global table to store win area positions
                    win_positions = {},
                    win_angle=0,
                }
            }
        }
    }
}