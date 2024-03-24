vim.api.nvim_set_keymap('n', '<leader>s', ':silent write<CR>:echo "セーブ"<CR>', { silent = true })

vim.api.nvim_create_user_command('Cheat', 'split ~/.cheatsheet.md', {})

-- Center search results
local mappings = { 'n', 'N', '*', '#', 'g*' }
for _, key in ipairs(mappings) do
  vim.api.nvim_set_keymap('n', key, key .. 'zz', { silent = true })
end

-- Move by line
vim.api.nvim_set_keymap('n', 'j', 'gj', { silent = true })
vim.api.nvim_set_keymap('n', 'k', 'gk', { silent = true })

-- Toggle between buffers
vim.api.nvim_set_keymap('n', '<leader><leader>', '<c-^>', { silent = true })

vim.api.nvim_set_keymap('n', ';', ':', {noremap = true})

-- Save All
        vim.keymap.set("n", "<leader>w", "<cmd>wa!<CR>", { desc = "Save all" })

