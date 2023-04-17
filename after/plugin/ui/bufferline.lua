require('bufferline').setup {
    options = {
        mode = "buffers", -- set to "tabs" to only show tabpages instead
        close_command = "bdelete! %d",       -- can be a string | function, see "Mouse actions"
        indicator = {
            icon = "▎",
            style = "icon"
        },
        buffer_close_icon = '',
        modified_icon = '●',
        left_trunc_marker = '',
        right_trunc_marker = '',
        max_name_length = 20,
        max_prefix_length = 15, -- prefix used when a buffer is de-duplicated
        truncate_names = true, -- whether or not tab names should be truncated
        diagnostics = "nvim_lsp", -- false to disable
        diagnostics_update_in_insert = false,
        diagnostics_indicator = function(count, level, diagnostics_dict, context)
            local s = " "
            for e, n in pairs(diagnostics_dict) do
                local sym = e == "error" and " "
                or (e == "warning" and " " or " " )
                s = s .. sym .. n
            end
            return s
        end,
        offsets = {
            {
                filetype = "undotree",
                text = "Undo Tree",
                text_align = "center",
                separator = true
            },
            {
                filetype = "NvimTree",
                text = "File Explorer",
                text_align = "center",
                separator = true
            }
        },
        color_icons = true, -- whether or not to add the filetype icon highlights
        show_buffer_icons = true, -- disable filetype icons for buffers
        show_buffer_default_icon = true, -- whether or not an unrecognised filetype should show a default icon
        show_duplicate_prefix = false, -- whether to show duplicate buffer prefix
        sort_by = 'insert_after_current',
        highlight = {
            buffer_selected = {
                guifg = {attribute='fg',highlight='#ff0000'},
                guibg = {attribute='bg',highlight='#0000ff'},
            },
            separator = {
                guifg = { attribute = "bg", highlight = "TabLine" },
                guibg = { attribute = "bg", highlight = "TabLine" },
            },
        }
    },
}

vim.keymap.set("n", "bp", vim.cmd.BufferLinePick)
vim.keymap.set("n", "bc", vim.cmd.BufferLinePickClose)
vim.keymap.set("n", "br", vim.cmd.BufferLineCloseRight)
vim.keymap.set("n", "bl", vim.cmd.BufferLineCloseLeft)
vim.keymap.set("n", "bd", vim.cmd.bdelete)

vim.keymap.set("n", "bm", vim.cmd.BufferLineCycleNext)
vim.keymap.set("n", "bn", vim.cmd.BufferLineCyclePrev)

vim.keymap.set("n", "bmm", vim.cmd.BufferLineMoveNext)
vim.keymap.set("n", "bmn", vim.cmd.BufferLineMovePrev)

