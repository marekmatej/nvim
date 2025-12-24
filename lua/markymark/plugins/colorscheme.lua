return {
  {
    "tiagovla/tokyodark.nvim", lazy = false, priority = 1000,
    config = function()
        vim.cmd("colorscheme tokyodark")
    end,
  },
  {
    "catppuccin/nvim", lazy = false,  name = "catppuccin", priority = 1000,
	config = function()
	  require("catppuccin").setup()
	end,
  },
  {
    "nyoom-engineering/nyoom.nvim", lazy = false,
	priority = 1000,

  },
  {
    "EdenEast/nightfox.nvim", lazy = false,
    priority = 1000,
    config = function()
      require("nightfox").setup({
        options = {
          transparent = true,
        },
      })
    end,
  },
  {
    "bluz71/vim-nightfly-colors", name = "nightfly",
	lazy = false, priority = 1000
  },
}
