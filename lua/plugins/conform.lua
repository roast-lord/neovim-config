return {
  "stevearc/conform.nvim",
  opts = {
    default_format_opts = {
      timeout_ms = 5000,
      async = false, -- not recommended to change
      quiet = false, -- not recommended to change
      lsp_format = "fallback", -- not recommended to change
    },
    formatters_by_ft = {
      javascript = { "prettier" },
      lua = { "stylua" },
      python = {
        "ruff_fix",
        "ruff_format",
        "ruff_organize_imports",
      },
      json = {
        "fixjson",
        "prettier",
      },
      html = { "prettier" },
      css = { "prettier" },
      yaml = { "yamlfmt" },
      go = { "golangci-lint", "gofmt", "goimports", "golines", stop_after_first = true },
      c = { "clang-format" },
      sql = { "sqlfluff" },
    },
  },
}
