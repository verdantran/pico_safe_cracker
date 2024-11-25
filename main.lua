function _init()
    cur_dials = {}

    for level in all(levels) do
        if level.id == 1 then
            cur_dials = level.dials
        end
    end
end

function _update60()
    for dial in all(cur_dials) do
        update_dials(dial)
    end
end

function _draw()
    cls()
    map()

    for dial in all(cur_dials) do
        draw_dials(dial)
    end
end
