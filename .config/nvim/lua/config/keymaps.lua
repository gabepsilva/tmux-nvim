-- General keymaps
vim.keymap.set('n', '<leader>w', ':w<CR>', { desc = 'Save file' })
vim.keymap.set('n', '<leader>q', ':q<CR>', { desc = 'Quit' })
vim.keymap.set('n', '<leader>wq', ':wq<CR>',{desc = 'Save and quit'})

-- Telescope keymaps
vim.keymap.set('n', '<leader>ff', function()
	require('telescope.builtin').find_files({
	hidden = true,
	no_ignore = true,
	find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/*" }
	})
 	end, { desc = 'Find files (including hidden)' })

vim.keymap.set('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', { desc = 'Live grep' })
vim.keymap.set('n', '<leader>fb', '<cmd>Telescope buffers<cr>', { desc = 'Find buffers' })
vim.keymap.set('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', { desc = 'Help tags' })


-- Neo-tree keymaps
vim.keymap.set('n', '<leader>e', ':Neotree toggle<CR>', { desc = 'Toggle file explorer' })

