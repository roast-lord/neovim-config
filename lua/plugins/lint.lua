return {
  "mfussenegger/nvim-lint",
  opts = {
    -- Event to trigger linters
    format_on_save = function(bufnr)
      return {
        timeout_ms = 5000,
        lsp_format = "fallback",
      }
    end,
    events = { "BufWritePost", "BufReadPost", "InsertLeave" },
    linters_by_ft = {
      dockerfile = { "hadolint" },
      json = { "jsonlint" },
      python = { "mypy", "ruff" },
      sql = { "sqlfluff" },
      go = { "golangcilint" },
    },

    linters = {
      sqlfluff = {
        args = { "lint", "--format=json" },
      },
      -- -- Example of using selene only when a selene.toml file is present
      -- selene = {
      --   -- `condition` is another LazyVim extension that allows you to
      --   -- dynamically enable/disable linters based on the context.
      --   condition = function(ctx)
      --     return vim.fs.find({ "selene.toml" }, { path = ctx.filename, upward = true })[1]
      --   end,
      -- },
    },
  },
}
