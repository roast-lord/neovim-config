return {
  { -- You can easily change to a different colorscheme.
    -- Change the name of the colorscheme plugin below, and then
    -- change the command in the config to whatever the name of that colorscheme is.
    --
    -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
    'catppuccin/nvim',
    name = 'catpuccin',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    init = function()
      require('catppuccin').setup {
        color_overrides = {
          mocha = {
            rosewater = '#ffc9c9',
            flamingo = '#ff9f9a',
            pink = '#ffa9c9',
            mauve = '#df95cf',
            lavender = '#a990c9',
            red = '#ff6960',
            maroon = '#f98080',
            peach = '#f9905f',
            yellow = '#f9bd69',
            green = '#b0d080',
            teal = '#a0dfa0',
            sky = '#a0d0c0',
            sapphire = '#95b9d0',
            blue = '#89a0e0',
            text = '#e0d0b0',
            subtext1 = '#d5c4a1',
            subtext0 = '#bdae93',
            overlay2 = '#928374',
            overlay1 = '#7c6f64',
            overlay0 = '#665c54',
            surface2 = '#504844',
            surface1 = '#3a3634',
            surface0 = '#252525',
            base = '#151515',
            mantle = '#0e0e0e',
            crust = '#080808',
          },
        },
        integrations = {
          telescope = {
            enabled = true,
          },
        },
      }
      -- Load the colorscheme here.
      -- Like many other themes, this one has different styles, and you could load
      -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
      vim.cmd.colorscheme 'catppuccin-mocha'

      -- You can configure highlights by doing something like:
      vim.cmd.hi 'Comment gui=none'
    end,
  },
}
