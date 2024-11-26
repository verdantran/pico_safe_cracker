function _init()
    dialog_playing=false
    load_next_level_when_dialog_complete = false
    level_to_load = nil

    load_level(0)
end

function _update60()
    dialog_playing = count(dialog.dialog_queue) > 0
    dialog_update()

    -- If dialog has just finished and we need to load the next level
    if not dialog_playing and load_next_level_when_dialog_complete then
        load_next_level_when_dialog_complete = false
        load_level(level_to_load)
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

function _draw()
    cls()
    map()
    
    for dial in all(cur_dials) do
        draw_dials(dial)
    end

    dialog_draw()
end
