
return {
    {
        "nvim-mini/mini.basics",
        opts = {},
    },
    {
        "nvim-mini/mini.comment",
        opts = {},
    },
    {
        "nvim-mini/mini.move",
        opts = {},
    },
    {
        "nvim-mini/mini.pairs",
        opts = {},
    },
    {
        "nvim-mini/mini.surround",
        opts = {},
    },
    {
        "nvim-mini/mini.bracketed",
        opts = {},
    },
    {
        "nvim-mini/mini.bufremove",
        opts = function()
            local bufremove = require("mini.bufremove")

            vim.keymap.set("n", "<leader>bd", function() bufremove.delete(0, false) end)
            vim.keymap.set("n", "<leader>bD", function() bufremove.delete(0, true) end)

            return {}
        end,
    },
}
