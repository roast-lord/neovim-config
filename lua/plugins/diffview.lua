return {
    {
        "sindrets/diffview.nvim",
        keys = {
            { "<leader>g", "<CMD>DiffviewOpen<CR>", mode = { "n", "i", "v" } },
        },
        config = {
            keymaps = {
                view = {
                    ["<leader>g"] = "<CMD>DiffviewClose<CR>",
                },
                file_panel = {
                    ["<leader>g"] = "<CMD>DiffviewClose<CR>",
                },
            },
        },
    },
}
