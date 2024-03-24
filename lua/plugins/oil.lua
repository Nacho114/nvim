return {
    'stevearc/oil.nvim',
    -- Optional dependencies
    -- dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {},
    config = function() 
        require("oil").setup()
        local oil_status, oil = pcall(require, "oil")
        if oil_status then
            -- Custom function to automatically toggle Oil
            vim.keymap.set("n", "<leader>e", function()
                if vim.bo.filetype == 'oil' then
                    oil.close()
                else
                    oil.open()
                end
            end, { desc = "File navigation" })
        end
    end,
}
