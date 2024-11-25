function _init()
    --the ball
    targetx=1
    targety=1

    --==target properties==
    targetangle=0
    -- the current speed
    target_angle_speed=0.005
    --the original speed (so that we can reset)
    target_angle_base_speed=target_angle_speed
    --the amount to increase by each time
    targetangle_speed_step=0.006
    
    --controls the radius of the target and the win zone
    targetr=43

    --==win zone==
    win_zone_size=15
    win_zone_size_base=win_zone_size
    win_zone_size_reduction_step=3

    cx=64
    cy=70

    rotate_clockwise=true

    total_locks=3
    cur_lock=0
    dial_solved=false
end

function _update60()
    --reset
    if dial_solved and btnp(5) then
        reset_dial()
    elseif not dial_solved then
        if (targetangle>1) targetangle=0

        if rotate_clockwise then
            targetangle-=target_angle_speed
        else
            targetangle+=target_angle_speed
        end

        targetx=cx+(targetr*cos(targetangle))
        targety=cy+(targetr*sin(targetangle))

        check_btn_hit_in_target()
    end
end

function _draw()
    cls()
    map()
    
    draw_dial(cx,cy,47)
    create_new_win_area(false)
    draw_player()
    draw_indicators()
end

function draw_dial(x,y,r)
   circfill(x,y,r,5)
   circfill(x,y,r-9,6)
end

-- Global table to store win area positions
win_positions = {}
win_angle=0

function create_new_win_area(gen_new_pos)
    -- Clear previous win area positions
    win_positions = {}

    if(gen_new_pos) win_angle=rnd(1)
    
    win_angle_incrementer=win_angle
    
    for i=0,win_zone_size do
        -- Calculate position for win zone
        local x=cx+(targetr*cos(win_angle_incrementer))
        local y=cy+(targetr*sin(win_angle_incrementer))

        -- Draw the win area
        circfill(x, y, 5, 1)

        -- Store the position for later use
        add(win_positions, {x=x, y=y})

        win_angle_incrementer += 0.01
    end
end

function check_btn_hit_in_target()
    if btnp(5) then
        for win in all(win_positions) do
            local dx = targetx - win.x
            local dy = targety - win.y
            local distance = sqrt(dx*dx + dy*dy)

            if distance < 5 then
                log("btn 5 hit in win area!")
                cur_lock+=1
                
                --win
                if total_locks == cur_lock and not dial_solved then
                    dial_solved = true
                    sfx(2)
                    return
                end

                rotate_clockwise= not rotate_clockwise
                target_angle_speed+=targetangle_speed_step
                win_zone_size-=win_zone_size_reduction_step
                
                sfx(0)
                create_new_win_area(true)
                return
            end
        end
        
        sfx(1)
        reset_dial()
        log("btn 5 hit but not in win area.")
    end
end

function draw_player()
    circfill(targetx,targety,3,7)
end

function draw_indicators()
    local spacer=10
    local x=40

    for i=1,total_locks do
        x+=spacer

        if(i<=cur_lock) then
            spr(2,x,5)
        else        
            spr(4,x,5)
        end
    end
end

function log(msg)
    printh(msg, "./debug.txt", overwrite)
end

function reset_dial()
    dial_solved=false
    cur_lock=0
    target_angle_speed=target_angle_base_speed
    win_zone_size=win_zone_size_base
    create_new_win_area(true)    
end