return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      filtered_items = {
        hide_dotfiles = false,
        hide_gitignored = false,
        hide_by_name = {
          ".venv",
          ".git",
          ".mypy_cache",
          ".vscode",
          ".ruff_cache",
          ".pytest_cache",
          "__pycache__",
          ".ropeproject",
        },
      },
    },
  },
}
