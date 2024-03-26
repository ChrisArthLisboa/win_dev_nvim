
local get = require("win_dev_nvim.get_info")

local M = {}


M.get_win_buffer = get.get_win_buffer
M.get_win_z_index = get.get_win_Zindex
M.get_win_border = get.get_win_border
M.get_win_id = get.get_win_id
M.get_win_config = get.get_win_config

return M

