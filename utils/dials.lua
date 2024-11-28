function update_dials(dial)
    if (dial.config.game_over) return

    if not dial.config.solved then
        if (dial.target.angle > 1) dial.target.angle = 0 

        if dial.config.rotate_clockwise then
            dial.target.angle -= dial.target.angle_speed
        else
            dial.target.angle += dial.target.angle_speed
        end

        dial.target.x = dial.config.cx + (dial.target.radius * cos(dial.target.angle))
        dial.target.y = dial.config.cy + (dial.target.radius * sin(dial.target.angle))
        
        update_timer(dial)
        check_btn_hit_in_target(dial)
    end
end

function draw_dials(dial)
    draw_dial(dial.config.cx, dial.config.cy, dial.config.radius, dial.config.inner_radius)
    create_new_win_area(dial, false)
    draw_player(dial)
    draw_indicators(dial)
    draw_timer(dial)    
end

function create_new_win_area(dial, should_gen_new_pos)
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

function check_btn_hit_in_target(dial)
    if btnp(5) then
        local hit_successful = false

        for win in all(dial.config.win_positions) do
            local dx = dial.target.x - win.x
            local dy = dial.target.y - win.y
            local distance = sqrt(dx * dx + dy * dy)

            if distance < 5 then
                dial.config.cur_lock += 1

                -- Win condition
                if dial.config.total_locks == dial.config.cur_lock and not dial.config.solved then
                    dial.config.solved = true
                    dial.timer.active = false
                    sfx(2)
                    return
                end

                dial.config.rotate_clockwise = not dial.config.rotate_clockwise
                dial.target.angle_speed += dial.target.angle_speed_step
                dial.win_zone.length -= dial.win_zone.length_reduction_step

                sfx(0)
                create_new_win_area(dial, true)
                return
            end
        end

        -- will get here if hit was not successful
        sfx(1)
        dial.config.rotate_clockwise = not dial.config.rotate_clockwise
        reset_dial_partial(dial)
    end
end

function draw_player(dial)
    circfill(dial.target.x, dial.target.y, 3, 7)
end

function draw_indicators(dial)
    local orig_x=dial.indicator.x

    for i = 1, dial.config.total_locks do
        dial.indicator.x += dial.indicator.spacer

        if (i <= dial.config.cur_lock) then
            spr(2, dial.indicator.x, dial.indicator.y)
        else
            spr(4, dial.indicator.x, dial.indicator.y)
        end
    end

    dial.indicator.x=orig_x
end

function reset_dial_full(dial)
    dial.config.solved = false
    dial.config.cur_lock = 0
    dial.config.game_over = false
    dial.config.rotate_clockwise = dial.config.rotate_clockwise_base

    dial.target.angle_speed = dial.target.angle_speed_base
    dial.target.angle = dial.target.angle_base
    dial.target.x = -50
    dial.target.y = -50

    dial.win_zone.length = dial.win_zone.base_length
    dial.win_zone.angle = dial.win_zone.base_angle

    dial.timer.time = dial.timer.base_time
    dial.timer.active = true

    create_new_win_area(dial, true)
end

function reset_dial_partial(dial)
    dial.config.solved = false
    if (dial.config.cur_lock > 0) dial.config.cur_lock -= 1
    dial.target.angle_speed = dial.target.angle_base_speed
    dial.win_zone.length = dial.win_zone.base_length
    create_new_win_area(dial, true)
end

--x,y,radius,inner_radius
function draw_dial(x,y,r,ir)
    circfill(x,y,r,5)
    circfill(x,y,ir,6)
 end
 
 function update_timer(dial)
    if dial.timer.active then
        dial.timer.time -= 1/60
        if dial.timer.time <= 0 then
            dial.timer.active = false
            dial.timer.time = 0
            dial.config.game_over=true
        end
    end
 end

 function draw_timer(dial)
    print(format_to_two_decimals(dial.timer.time),dial.timer.x, dial.timer.y)
 end

function format_to_two_decimals(num)
    local abs_num = abs(num)
    local integer_part = flr(abs_num)
    local fractional_part = flr((abs_num * 100) % 100)
    local formatted_fraction = (fractional_part < 10) and "0"..fractional_part or ""..fractional_part
    local formatted_number = integer_part.."."..formatted_fraction

    if num < 0 then
        formatted_number = "-"..formatted_number
    end

    return formatted_number
end