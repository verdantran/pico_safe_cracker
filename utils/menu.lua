menu_dial={
    target = {
        --the ball
        x = -50,
        y = -50,

        --==target properties==
        angle = 0.35,
        -- the current speed
        angle_speed = 0.003,
        --controls the radius of the target and the win zone
        radius = 43
    },
    selection_zones = {
        {
            --==right-side==
            length = 25,
            size=5,
            angle=.88,
            selection_type=game_state.story,
        },
        {
            --==left-side==
            length = 25,
            size=5,
            angle=.37,
            selection_type=game_state.endless,
        },
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
        selection_positions = {},
    },
}

function update_menu_dial()
    if (menu_dial.target.angle > 1) menu_dial.target.angle = 0 

    menu_dial.target.angle -= menu_dial.target.angle_speed
    
    menu_dial.target.x = menu_dial.config.cx + (menu_dial.target.radius * cos(menu_dial.target.angle))
    menu_dial.target.y = menu_dial.config.cy + (menu_dial.target.radius * sin(menu_dial.target.angle))
    
    menu_check_btn_hit_in_selection(dial)
end

function draw_menu_dial()
    menu_draw_dial(menu_dial.config.cx, menu_dial.config.cy, menu_dial.config.radius, menu_dial.config.inner_radius)
    create_selection_areas(menu_dial)
    menu_draw_player(menu_dial)
end

function create_selection_areas()
    menu_dial.config.selection_positions = {}

    for selection in all(menu_dial.selection_zones) do
        win_angle_incrementer = selection.angle

        for i = 0, selection.length do
            local x = menu_dial.config.cx + (menu_dial.target.radius * cos(win_angle_incrementer))
            local y = menu_dial.config.cy + (menu_dial.target.radius * sin(win_angle_incrementer))

            circfill(x, y, selection.size, 1)

            add(menu_dial.config.selection_positions, { x = x, y = y, mode=selection.selection_type })

            --not in config becuase we want these to be tightly packed
            win_angle_incrementer += 0.01
        end
    end
end

function menu_check_btn_hit_in_selection()
    if btnp(5) then
        for selection in all(menu_dial.config.selection_positions) do
            local dx = menu_dial.target.x - selection.x
            local dy = menu_dial.target.y - selection.y
            local distance = sqrt(dx * dx + dy * dy)

            if distance < 5 then
                sfx(0)

                change_game_state(selection.mode)
                return
            end
        end

        -- will get here if hit was not successful
        sfx(1)
    end
end

function get_currently_highlighted_selection_mode()
    for selection in all(menu_dial.config.selection_positions) do
        local dx = menu_dial.target.x - selection.x
        local dy = menu_dial.target.y - selection.y
        local distance = sqrt(dx * dx + dy * dy)

        if distance < 5 then
            return selection.mode
        end
    end
end

function menu_draw_player()
    circfill(menu_dial.target.x, menu_dial.target.y, 3, 7)
end

--x,y,radius,inner_radius
function menu_draw_dial(x,y,r,ir)
    circfill(x,y,r,5)
    circfill(x,y,ir,6)
 end

 function draw_selection_hint()
    curselect = get_currently_highlighted_selection_mode()
    local text=""
    if(curselect == game_state.story) then
        text="story"
    elseif (curselect==game_state.endless) then
        text="endless"
    end

    print("mode: "..text,40,64,7)
    print("press ❎",48,73,7)
 end
