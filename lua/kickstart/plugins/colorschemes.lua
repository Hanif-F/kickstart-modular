return {
  { -- You can easily change to a different colorscheme.
    -- Change the name of the colorscheme plugin below, and then
    -- change the command in the config to whatever the name of that colorscheme is.
    --
    -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
    'folke/tokyonight.nvim',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    init = function()
      -- Load the colorscheme here.
      -- Like many other themes, this one has different styles, and you could load
      -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.

      -- You can configure highlights by doing something like:
      vim.cmd.hi 'Comment gui=none'
    end,
  },
  {
    'uloco/bluloco.nvim',
    lazy = false,
    priority = 1000,
    dependencies = { 'rktjmp/lush.nvim' },
    config = function()
      -- your optional config goes here, see below.
      require('bluloco').setup {
        style = 'auto', -- "auto" | "dark" | "light"
        transparent = true,
        italics = false,
        terminal = vim.fn.has 'gui_running' == 1, -- bluoco colors are enabled in gui terminals per default.
        guicursor = true,
      }

      vim.opt.termguicolors = true
      -- vim.cmd('colorscheme bluloco')
      vim.cmd.colorscheme 'bluloco'
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
