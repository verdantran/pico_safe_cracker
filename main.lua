game_state={
    menu=0,
    story=1,
    endless=2,
    ending=3
}

function _init()
    cartdata("safe_crackers")
    palt(0, false)
    cur_game_state=-1
    --music(0)
    change_game_state(0)
end

function _update60()
    if cur_game_state == game_state.menu then
        update_menu()
    elseif cur_game_state == game_state.story then
        update_story()
    elseif cur_game_state == game_state.endless then
        update_endless()
    elseif cur_game_state == game_state.ending then
        update_ending()
    end
end

function _draw()
    if cur_game_state == game_state.menu then
        draw_menu()
    elseif cur_game_state == game_state.story then
        draw_story()
    elseif cur_game_state == game_state.endless then
        draw_endless()
    elseif cur_game_state == game_state.ending then
        draw_ending()
    end
end

function change_game_state(new_state)
	cur_game_state = new_state

    if cur_game_state == game_state.story then
        init_story()
    elseif cur_game_state == game_state.endless then
        set_initial_endless_pos = true
    elseif cur_game_state == game_state.ending then
        load_next_level_when_dialog_complete=true
        dialog:queue("let's see what's inside... whoa. a sapphire? now *that's* a payday!")
        dialog:queue("looks like... a key? no, it's more like... a piece of something?")
        dialog:queue("huh. well, whatever it is, someone went to a lot of trouble to hide it.")
        dialog:queue("guess this isn't over yet. but hey, let's enjoy the sapphire first. we earned it!")
        dialog:queue("come on, let's get out of here before this place caves in. i'm not much for spelunking.")
    end
end

-- menu

function update_menu()
    update_menu_dial()
end

function draw_menu()
    cls()
    map(0,0)

    print("safe crackers", 38,10)

    --draw title etc
    draw_menu_dial()
    draw_selection_hint()
end

-- story

function init_story()
    dialog_playing=false
    load_next_level_when_dialog_complete = false
    reset_level_when_dialog_complete = false
    level_to_load = 0

    local saved_level=get_saved_level()
    if(saved_level != nil) level_to_load = saved_level

    if (level_to_load == 9) level_to_load=8

    load_level(level_to_load)
end

function update_story()
    dialog_playing = count(dialog.dialog_queue) > 0
    dialog_update()

    -- If dialog has just finished and we need to load the next level
    if not dialog_playing and load_next_level_when_dialog_complete then
        load_next_level_when_dialog_complete = false
        load_level(level_to_load)
        return
    end    

    -- If dialog has just finished and we need to reset the level
    if not dialog_playing and reset_level_when_dialog_complete then
        reset_level_when_dialog_complete = false
        reset_level()
        return
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
    map(0,0)
    
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
    map(0,0)
    if(set_initial_endless_pos) then
        endless_create_new_win_area(endless_dial, true)
        set_initial_endless_pos = false
    end
    endless_draw_dials(endless_dial)
    draw_scores()
end

-- ending

function update_ending()
    dialog_update()

    dialog_playing = count(dialog.dialog_queue) > 0

    -- If dialog has just finished and we need to load the next level
    if not dialog_playing and load_next_level_when_dialog_complete then
        load_next_level_when_dialog_complete = false
        change_game_state(game_state.menu)
    end
end

function draw_ending()
    cls()
    map(17,0)

    dialog_draw()
end
