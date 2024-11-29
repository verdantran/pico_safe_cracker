current_level={}

function load_level(level_id)
    for level in all(levels) do
        if level.id == level_id then
            if(level.id==9) then
                -- reset the level before going to the ending
                reset_level()
                change_game_state(game_state.ending)
                return
            end

            current_level = level
            save_level(current_level.id)
            cur_dials = level.dials

            -- Store initial values for reset
            for dial in all(cur_dials) do
                dial.timer.base_time = dial.timer.time
                dial.target.angle_base = dial.target.angle
                dial.config.rotate_clockwise_base = dial.config.rotate_clockwise
                dial.config.initial_reset_done=false
                dial.target.angle_speed_base = dial.target.angle_speed
                dial.win_zone.base_length = dial.win_zone.length
                dial.win_zone.base_angle = dial.win_zone.angle
            end
        end
    end

    current_level:queue_level_start_dialog()
end

function check_cur_level_status()
    local game_over = false
    local all_solved = true

    for dial in all(current_level.dials) do
        -- If the timer is not active and the dial is not solved, it's a game over
        if not dial.timer.active and not dial.config.solved then
            game_over = true
            break
        end

        -- Check if all dials are solved
        if not dial.config.solved then
            all_solved = false
        end
    end

    if game_over then
        handle_level_over()
    elseif all_solved and current_level != nil then
        handle_level_complete()
    end
end

function handle_level_complete()
    current_level:queue_completed_dialog()

    level_to_load = current_level.id + 1
    load_next_level_when_dialog_complete = true
end

function handle_level_over()
    current_level:queue_failed_dialog()

    reset_level_when_dialog_complete = true
end

function reset_level()
    for dial in all(cur_dials) do
        reset_dial_full(dial)
    end
end

function clear_saved_level()
    dset(1,0)
end

function get_saved_level()
    return dget(1)
end

function save_level(level_id)
    dset(1,level_id)
end
