return {
    {
        "dense-analysis/ale",
        config = function()
            -- Configuration goes here.
            local g = vim.g
            g.ale_linters = {
                python = { "mypy", "golangci-lint" },
            }
        end,
    },
}
