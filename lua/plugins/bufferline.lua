
return {
    "akinsho/bufferline.nvim",
    version = "*",

    dependencies = {
        "nvim-mini/mini.bufremove",
    },

    opts = function()
        vim.keymap.set("n", "<S-l>", "<cmd>BufferLineCycleNext<CR>")
        vim.keymap.set("n", "<S-h>", "<cmd>BufferLineCyclePrev<CR>")

        return {
            options = {
                close_command = function(n) require("mini.bufremove").delete(n, false) end,
                right_mouse_command = function(n) require("mini.bufremove").delete(n, false) end,

                offsets = {
                    {
                        filetype = "neo-tree",
                        text = "File Explorer",
                        highlight = "Directory",
                        text_align = "left",
                    }
                }
            }
        }
    end,
}
