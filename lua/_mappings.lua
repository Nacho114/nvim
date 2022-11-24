local M = require("_utils")

local function map(mode, key, func) vim.keymap.set(mode, key, func, {silent=true}) end

map('n', '<leader>rb', M.reach.buffers)
map('n', '<leader>rm', M.reach.marks)
map('n', '<leader>rg', M.telescope.live_grep)
map('n', '<leader>fd', M.telescope.find_files)
map('n', '<leader>hh', function() require("harpoon.mark").add_file() end)
map('n', '<leader>hf', function() require("harpoon.ui").toggle_quick_menu() end)
map('n', '<leader>ht', function() require("harpoon.term").gotoTerminal(1) end)
