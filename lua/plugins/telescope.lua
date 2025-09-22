
return {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",

    dependencies = {
        "nvim-lua/plenary.nvim",
    },

    opts = function()
        vim.keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<CR>')
        vim.keymap.set('n', '<leader>fg', '<cmd>Telescope live_grep<CR>')
        vim.keymap.set('n', '<leader>fb', '<cmd>Telescope buffers<CR>')
        vim.keymap.set('n', '<leader>fh', '<cmd>Telescope help_tags<CR>')

        vim.keymap.set("n", "<C-p>", "<cmd>Telescope find_files<CR>")

        return {
            defaults = {
                layout_strategy = "vertical",
                layout_config = {
                    vertical = { width = 0.5 },
                }
            }
        }
    end
}
