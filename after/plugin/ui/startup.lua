local os = require("os")

function CurrentTime()
    return os.date("%Y-%m-%d %H:%M")
end


require("startup").setup {
       header = {
        type = "text",
        oldfiles_directory = false,
        align = "center",
        fold_section = false,
        title = "Header",
        margin = 5,
        content = {
            " ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗",
            " ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║",
            " ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║",
            " ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║",
            " ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║",
            " ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝",
        },
        highlight = "Statement",
        default_color = "",
        oldfiles_amount = 0,
    },
    body = {
        type = "mapping",
        oldfiles_directory = false,
        align = "center",
        fold_section = false,
        title = "Basic Commands",
        margin = 5,
        content = {
            { " New File",     "lua require'startup'.new_file()",  "<leader>nf" },
            { " Find File",    "Telescope find_files",             "<leader>ff" },
            { " Find Word",    "Telescope live_grep",              "<leader>lg" },
            { " File Browser", "Telescope file_browser",           "<leader>fb" },
            { " Recent Files", "Telescope oldfiles",               "<leader>of" },
            { " Colorschemes", "Telescope colorscheme",            "<leader>cs" },
            { " Projects",     "Telescope project",                "<leader>p"  },
        },
        highlight = "String",
        default_color = "",
        oldfiles_amount = 0,
    },
    footer = {
        type = "text",
        oldfiles_directory = false,
        align = "center",
        fold_section = false,
        title = "Footer",
        margin = 5,
        content = { CurrentTime() },
        highlight = "Number",
        default_color = "",
        oldfiles_amount = 0,
    },

    options = {
        mapping_keys = true,
        cursor_column = 0.5,
        empty_lines_between_mappings = true,
        disable_statuslines = true,
        paddings = { 1, 3, 3, 0 },
    },
    mappings = {
        execute_command = "<CR>",
        open_file = "o",
        open_file_split = "<c-o>",
        open_section = "<TAB>",
        open_help = "?",
    },
    colors = {
        background = "#1f2227",
        folded_section = "#56b6c2",
    },
    parts = { "header", "body", "footer" }, 
}

