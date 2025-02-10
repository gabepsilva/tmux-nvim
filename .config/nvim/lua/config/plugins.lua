return require("lazy").setup({
  -- Essential plugins for better experience
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    tag = "0.1.5",
    config = function()
      require("plugins.telescope")
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    run = ":TSUpdate",
    config = function()
      require("plugins.treesitter")
    end,
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
  },
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
  },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
  },
})
