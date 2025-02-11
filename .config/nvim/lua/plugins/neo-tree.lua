-- In lua/plugins/neo-tree.lua

require("neo-tree").setup({
    filesystem = {
        filtered_items = {
            hide_dotfiles = false,
            visible = true,
        },
    },
})
