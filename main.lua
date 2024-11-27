game_state={
    menu=0,
    story=1,
    endless=2
}
function _init()
    palt(0, false)
    cur_game_state=-1
    music(0)
    change_game_state(0)
end

function _update60()
    if cur_game_state == game_state.menu then
        update_menu()
    elseif cur_game_state == game_state.story then
        update_story()
    elseif cur_game_state == game_state.endless then
        update_endless()
    end
end

function _draw()
    if cur_game_state == game_state.menu then
        draw_menu()
    elseif cur_game_state == game_state.story then
        draw_story()
    elseif cur_game_state == game_state.endless then
        draw_endless()
    end
end

function change_game_state(new_state)
    log("new state: "..new_state)
	cur_game_state = new_state

    if(cur_game_state == game_state.story) then
        log("init story")
        init_story()
    elseif(cur_game_state == game_state.endless) then
        set_initial_endless_pos = true
    end
end

-- menu

function update_menu()
    update_menu_dial()
end

function draw_menu()
    cls()
    map()

    print("safe crackers", 41,10)

    --draw title etc
    draw_menu_dial()
    draw_selection_hint()
end

-- story

function init_story()
    dialog_playing=false
    load_next_level_when_dialog_complete = false
    reset_level_when_dialog_complete = false
    level_to_load = nil

    load_level(0)
end

function update_story()
    dialog_playing = count(dialog.dialog_queue) > 0
    dialog_update()

    -- If dialog has just finished and we need to load the next level
    if not dialog_playing and load_next_level_when_dialog_complete then
        load_next_level_when_dialog_complete = false
        load_level(level_to_load)
    end    

    -- If dialog has just finished and we need to reset the level
    if not dialog_playing and reset_level_when_dialog_complete then
        reset_level_when_dialog_complete = false
        reset_level()
    end

    -- If we're playing dialog, don't do anything else
    if dialog_playing then return end

    if cur_dials != nil then
        for dial in all(current_level.dials) do
            update_dials(dial)
        end

        check_cur_level_status()
    end
end

function draw_story()
    cls()
    map()
    
    for dial in all(cur_dials) do
        draw_dials(dial)
    end

    dialog_draw()
end

-- endless

function update_endless()
    endless_update_dials(endless_dial)
end

function draw_endless()
    cls()
    map()
    if(set_initial_endless_pos) then
        endless_create_new_win_area(endless_dial, true)
        set_initial_endless_pos = false
    end
    endless_draw_dials(endless_dial)
    draw_score()
end