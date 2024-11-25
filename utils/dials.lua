function get_dials_by_level_id(level_id)
    -- return levels by level id
end

function update_dials(dial)
    --reset
    if dial.config.dial_solved and btnp(5) then
        reset_dial()
    elseif not dial.config.dial_solved then
        if (dial.target.angle > 1) dial.target.angle = 0 
        
        if dial.config.rotate_clockwise then
            dial.target.angle -= dial.target.angle_speed
        else
            dial.target.angle += dial.target.angle_speed
        end

        dial.target.x = dial.config.cx + (dial.target.radius * cos(dial.target.angle))
        dial.target.y = dial.config.cy + (dial.target.radius * sin(dial.target.angle))

        check_btn_hit_in_target(dial)
    end
end

function draw_dials(dial)
    draw_dial(dial.config.cx, dial.config.cy, 47)
    create_new_win_area(dial, false)
    draw_player(dial)
    draw_indicators(dial)
end

function create_new_win_area(dial, should_gen_new_pos)
    dial.config.win_positions = {}

    if (should_gen_new_pos) dial.config.win_angle = rnd(1)
    win_angle_incrementer = dial.config.win_angle

    for i = 0, dial.win_zone.size do
        local x = dial.config.cx + (dial.target.radius * cos(win_angle_incrementer))
        local y = dial.config.cy + (dial.target.radius * sin(win_angle_incrementer))

        circfill(x, y, 5, 1)

        add(dial.config.win_positions, { x = x, y = y })

        --not in config becuase we want these to be tightly packed
        win_angle_incrementer += 0.01
    end
end

function check_btn_hit_in_target(dial)
    if btnp(5) then
        for win in all(dial.config.win_positions) do
            local dx = dial.target.x - win.x
            local dy = dial.target.y - win.y
            local distance = sqrt(dx * dx + dy * dy)

            if distance < 5 then
                log("btn 5 hit in win area!")
                dial.config.cur_lock += 1

                --win
                if dial.config.total_locks == dial.config.cur_lock and not dial.config.dial_solved then
                    dial.config.solved = true
                    sfx(2)
                    return
                end

                dial.config.rotate_clockwise = not dial.config.rotate_clockwise
                dial.target.angle_speed += dial.target.angle_speed_step
                dial.win_zone.size -= dial.win_zone.size_reduction_step

                sfx(0)
                create_new_win_area(dial, true)
                return
            end
        end

        sfx(1)
        reset_dial(dial)
        log("btn 5 hit but not in win area.")
    end
end

function draw_player(dial)
    circfill(dial.target.x, dial.target.y, 3, 7)
end

function draw_indicators(dial)
    local spacer = 10
    local x = 40

    for i = 1, dial.config.total_locks do
        x += spacer

        if (i <= dial.config.cur_lock) then
            spr(2, x, 5)
        else
            spr(4, x, 5)
        end
    end
end

function reset_dial(dial)
    dial.config.solved = false
    dial.config.cur_lock = 0
    dial.target.angle_speed = dial.target.angle_base_speed
    dial.win_zone.size = dial.win_zone.base_size
    create_new_win_area(dial, true)
end


--todo: need to ensure that we're manipulating the radius
--properly here based on size of dials.
function draw_dial(x,y,r)
    circfill(x,y,r,5)
    circfill(x,y,r-9,6)
 end
 