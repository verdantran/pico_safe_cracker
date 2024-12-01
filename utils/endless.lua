cur_score=0

endless_dial={
    target = {
        --the ball
        x = -50,
        y = -50,

        --==target properties==
        angle = 0,
        -- the current speed
        angle_speed = 0.008,
        --the original speed (so that we can reset)
        angle_base_speed = 0.008,
        --the amount to increase by each time
        angle_speed_step = 0.0002,
        --controls the radius of the target and the win zone
        radius = 43
    },
    win_zone = {
        --==win zone==
        length = 15,
        base_length = 15,
        length_reduction_step = 0.05,
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
        -- Global table to store win area positions
        win_positions = {},
    },
}

function endless_update_dials(dial)
    if (dial.target.angle > 1) dial.target.angle = 0 

    if dial.config.rotate_clockwise then
        dial.target.angle -= dial.target.angle_speed
    else
        dial.target.angle += dial.target.angle_speed
    end

    dial.target.x = dial.config.cx + (dial.target.radius * cos(dial.target.angle))
    dial.target.y = dial.config.cy + (dial.target.radius * sin(dial.target.angle))
    
    endless_check_btn_hit_in_target(dial)
end

function endless_draw_dials(dial)
    endless_draw_dial(dial.config.cx, dial.config.cy, dial.config.radius, dial.config.inner_radius)
    endless_create_new_win_area(dial, false)
    endless_draw_player(dial)
end

function endless_create_new_win_area(dial, should_gen_new_pos)
    dial.config.win_positions = {}

    if (should_gen_new_pos) dial.win_zone.angle = rnd(1)
    win_angle_incrementer = dial.win_zone.angle

    for i = 0, dial.win_zone.length do
        local x = dial.config.cx + (dial.target.radius * cos(win_angle_incrementer))
        local y = dial.config.cy + (dial.target.radius * sin(win_angle_incrementer))

        circfill(x, y, dial.win_zone.size, 1)

        add(dial.config.win_positions, { x = x, y = y })

        --not in config becuase we want these to be tightly packed
        win_angle_incrementer += 0.01
    end
end

function endless_check_btn_hit_in_target(dial)
    if btnp(5) then
        local hit_successful = false

        for win in all(dial.config.win_positions) do
            local dx = dial.target.x - win.x
            local dy = dial.target.y - win.y
            local distance = sqrt(dx * dx + dy * dy)

            if distance < 5 then
                dial.config.rotate_clockwise = not dial.config.rotate_clockwise
                dial.target.angle_speed += dial.target.angle_speed_step
                if(dial.win_zone.length > 0) dial.win_zone.length -= dial.win_zone.length_reduction_step

                sfx(0)
                endless_create_new_win_area(dial, true)

                cur_score+=1
                if (get_high_score() < cur_score) save_high_score(cur_score)
                return
            end
        end

        -- will get here if hit was not successful
        sfx(1)
        dial.config.rotate_clockwise = not dial.config.rotate_clockwise
        endless_reset_dial_partial(dial)
    end
end

function endless_draw_player(dial)
    circfill(dial.target.x, dial.target.y, 3, 7)
end

--x,y,radius,inner_radius
function endless_draw_dial(x,y,r,ir)
    circfill(x,y,r,5)
    circfill(x,y,ir,6)
 end

function draw_scores()
    print(cur_score, 64,64,7)
    better_print("best: "..get_high_score(),50,74,5)
end

 function endless_reset_dial_partial(dial)
    dial.target.angle_speed = dial.target.angle_base_speed
    dial.win_zone.length = dial.win_zone.base_length
    cur_score=0
    endless_create_new_win_area(dial, true)
end

function get_high_score()
    local high_score = dget(0)

    if (high_score == nil) high_score = 0

    return high_score
end

function save_high_score(score)
    dset(0, score)
end