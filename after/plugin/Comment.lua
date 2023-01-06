require("Comment").setup {
    -- Add a space b/w comment and the line
    padding = true,
    -- Whether the cursor should stay at its position
    sticky = true,
    -- Lines to be ignored while (un)comment
    ignore = nil,
    -- LHS of toggle mappings in NORMAL mode
    toggler = {
        -- Line-comment toggle keymap
        line = 'clc',
        -- Block-comment toggle keymap
        block = 'cbc',
    },
    -- LHS of operator-pending mappings in NORMAL and VISUAL mode
    opleader = {
        -- Line-comment keymap
        line = 'cl',
        -- Block-comment keymap
        block = 'cb',
    },
    -- LHS of extra mappings
    extra = {
        -- Add comment on the line above
        above = 'ca',
        -- Add comment on the line below
        below = 'cb',
        -- Add comment at the end of line
        eol = 'ce',
    },
    -- Enable keybindings
    -- NOTE: If given `false` then the plugin won't create any mappings
    mappings = {
        basic = true,
        extra = true,
    },
    -- Function to call before (un)comment
    pre_hook = nil,
    -- Function to call after (un)comment
    post_hook = nil,
}


-- vim.keymap.set("n", "<leader>cl", vim.cmd.CommentToggle)
-- vim.keymap.set("v", "b", vim.cmd.CommentToggle)



