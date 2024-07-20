return {
  {
    "folke/tokyonight.nvim",
    lazy = true,
    priority = 1000,
  },

  -- Configure LazyVim to load colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight-moon",
    },
  },
}
