current_level={}

function load_level(level_id)
    for level in all(levels) do
        if level.id == level_id then
            current_level = level
            cur_dials = level.dials
        end
    end
    -- Only queue level start dialog if not coming from a previous dialog
    if not load_next_level_when_dialog_complete then
        current_level:queue_level_start_dialog()
    end
end

function check_cur_level_status()
    -- check that all dials are 
    -- solved
    local game_won = true
    local game_in_progress = false

    for dial in all(current_level.dials) do       
        if dial.timer.active then
            game_in_progress = true
        else
            game_won = not dial.config.game_over
        end
    end

    if game_won and not game_in_progress then
        handle_level_complete()
    elseif not game_in_progress then
        handle_level_over()
    end
end

function handle_level_complete()
    current_level:queue_completed_dialog()

    level_to_load = current_level.id + 1
    load_next_level_when_dialog_complete = true
end

function handle_level_over()
    current_level:queue_failed_dialog()

    level_to_load = current_level.id
    load_next_level_when_dialog_complete = true
end