local Ui = {}

--> Centering an array of strings
local center = function(dict)
    local new_dict = {}
    for _, v in pairs(dict) do
        local padding = vim.fn.max(vim.fn.map(dict, 'strwidth(v:val)'))
        local spacing = (" "):rep(math.floor((vim.o.columns - padding) / 2)) .. v
        table.insert(new_dict, spacing)
    end
    return new_dict
end

--> Simple dashboard
Ui.splash_screen = function()
    local xdg = vim.fn.fnamemodify(vim.fn.stdpath("config"), ":h").."/"
    
    local header = require("nacho").original

    if vim.api.nvim_buf_get_name(0) == "" then
        vim.api.nvim_buf_set_option(0, 'bufhidden', 'wipe')

        vim.schedule(function()
            vim.fn.matchadd("Error", '[░▒]')
            vim.fn.matchadd("Function", '[▓█▄▀▐▌]')
            local buf = vim.api.nvim_create_buf(false, true)
            local keys = {K='kitty/kitty.conf', F='fish/config.fish', I='nvim/init.lua', A='alacritty/alacritty.yml', P='picom/picom.conf'}
            vim.api.nvim_win_set_buf(0, buf)
            vim.api.nvim_put(center(header), "l", true, true)
            vim.cmd [[silent! setl nonu nornu acd ft=dashboard]]

            for k,f in pairs(keys) do vim.keymap.set('n', k,'<cmd>e '..xdg..f..' | setl noacd<CR>', {buffer=0, silent=true}) end
            vim.keymap.set('n', 'P', '<cmd>Telescope oldfiles<CR>', {buffer=0})
            vim.keymap.set('n', 'q', '<cmd>q<CR>', {buffer=0})
        end)
    end
end

return Ui
