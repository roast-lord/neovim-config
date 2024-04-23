-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'stevearc/conform.nvim',
    opts = {
      formatters_by_ft = {
        python = {
          -- To fix lint errors.
          'ruff_fix',
          -- To run the Ruff formatter.
          'ruff_format',
        },
        json = {
          'fixjson',
          'prettier',
        },
      },
    },
    format_on_save = {
      -- These options will be passed to conform.format()
      timeout_ms = 500,
      lsp_fallback = true,
    },
  },
}
