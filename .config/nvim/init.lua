vim.opt.number = true

-- Bootstrap lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Load plugin configuration
require("config.plugins")

-- Load keymaps
require("config.keymaps")


-- Basic configurations
vim.cmd[[colorscheme tokyonight]]


-- Create an autocmd to open neo-tree on startup
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    -- Only open if a directory or no file is specified
    if vim.fn.argc() == 0 or vim.fn.isdirectory(vim.fn.argv()[0]) == 1 then
      vim.cmd("Neotree toggle")
    end
  end,
})
