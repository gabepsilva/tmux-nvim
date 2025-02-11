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
    config = function()
      require('plugins.neo-tree')
    end,
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
    config = function()
      require('plugins.lualine')
    end,
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },
  {
    "akinsho/bufferline.nvim",
    version = "*",
    config = function()
      require("bufferline").setup{}
    end,
    dependencies = {"nvim-tree/nvim-web-devicons"}
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
  },
})
