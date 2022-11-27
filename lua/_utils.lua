local M = {}

M.reach = {}
M.telescope = {}

local auto_handles = vim.split('hfjdkslagbceimnopqrtuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ!"#$%&\'()*+,-./:;<=>?@[\\]^_`{|}~', '') 

local buffer_options = {
  auto_handles = auto_handles, -- require('reach.buffers.constant').auto_handles,
  -- A map of action to key that should be used to invoke it
  actions = {
    split = '-',
    vertsplit = '|',
    tabsplit = ']',
    delete = '<Space>',
    priority = '=',
  },
}

local mark_options = {
  filter = function(mark)
    return mark:match('[a-zA-Z]') -- return true to disable
  end,
  -- A map of action to key that should be used to invoke it
  actions = {
    split = '-',
    vertsplit = '|',
    tabsplit = ']',
    delete = '<Space>',
  },
}

--> Custom telescope theme
local telescope_theme = {
    cwd = vim.fn.expand('%:p:h'), -- find files from current files project
    results_title = false,
    layout_strategy = "center",
    sorting_strategy = "ascending",
    previewer = false,
    prompt_prefix = "      ",
    winblend = 15,
    layout_config = { width = 0.6, height = 0.6 },
    borderchars = {
        preview = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
        prompt = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
        results = { "─", " ", " ", " ", "╰", "╯", " ", " " },
    },
}

M.reach.buffers = function() require('reach').buffers(buffer_options) end
M.reach.marks = function() require('reach').marks(mark_options) end

M.telescope.live_grep = function() require('telescope.builtin').live_grep() end
M.telescope.find_files = function() require("telescope.builtin").find_files(telescope_theme) end

return M
