
return {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },

    opts = {
        options = {
            icons_enabled = true,
            disabled_filetypes = { 'neo-tree' },
            ignore_focus = {},
            always_divide_middle = true,
            globalstatus = false,
            refresh = {
                refresh_time = 16,
            },
        },
        sections = {
            lualine_a = { 'mode' },
            lualine_b = { 'branch' },
            lualine_c = { {'diagnostics', sources = { 'nvim_diagnostic' } } },
            lualine_x = { 'filetype' },
            lualine_y = {},
            lualine_z = { 'location' }
        },
        inactive_sections = {
            lualine_a = {},
            lualine_b = {},
            lualine_c = { 'filename' },
            lualine_x = { 'location' },
            lualine_y = {},
            lualine_z = {}
        },
        tabline = {},
    }
}
