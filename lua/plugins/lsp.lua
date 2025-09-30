return {
  "neovim/nvim-lspconfig",
  ---@class PluginLspOpts
  opts = {
    servers = {
      clangd = {},
      gopls = {},
      pyright = {
        settings = {
          pyright = {
            disableOrganizeImports = true,
            disableTaggedHints = true,
          },
          python = {
            analysis = {
              autoSearchPaths = true,
              diagnosticMode = "workspace",
              useLibraryCodeForTypes = true,
            },
          },
        },
      },
      ruff = {
        init_options = {
          settings = {
            configurationPreference = "filesystemFirst",
            organize_imports = true,
          },
        },
      },
    },
  },
}
