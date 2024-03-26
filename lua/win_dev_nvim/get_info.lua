
local M = {}


function M.get_win_id(print_par)
    local print_condition = not print_par and true
    if print_condition then
        print(vim.fn.win_getid())
    end
    return vim.fn.win_getid()
end



function M.get_win_config(win_id_passed, print_par)
    local print_condition = not print_par and true
    local win_id = tonumber(win_id_passed) or M.get_win_id()
    local win_config = vim.api.nvim_win_get_config(win_id)

    if print_condition then
        for i, v in pairs(win_config) do
            print(i .. " : " .. tostring(v))
        end
    end

    return win_config
end


function M.get_win_border(win_id_passed)

    local win_id = tonumber(win_id_passed) or M.get_win_id(true)

    local win_config = M.get_win_config(win_id, true)

    local border = win_config["border"]

    if border == nil then
        print("No border")
    else
        print("Border: " .. border)
    end

end


function M.get_win_Zindex(win_id_passed)

    local win_id = tonumber(win_id_passed) or M.get_win_id(true)

    local win_config = M.get_win_config(win_id, true)

    local Zindex = win_config["Zindex"]

    if Zindex == nil then
        print("No Zindex")
    else
        print("Zindex: " .. Zindex)
    end

end


function M.get_win_buffer(win_id_passed, print_par)
    local win_id = tonumber(win_id_passed) or M.get_win_id(true)
    local print_condition = not print_par and true

    local win_config = M.get_win_config(win_id, true)

    local buffer = win_config["buffer"]

    if print_condition then
        if buffer == nil then
            print("No buffer")
        else
            print("Buffer: " .. buffer)
        end
    end

    return buffer

end

return M
