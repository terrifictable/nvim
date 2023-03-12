require("telescope").load_extension("file_browser")
require("telescope").load_extension("project")
require("telescope").load_extension("lazygit")
-- require("telescope").load_extension("dap")
require("telescope").load_extension("ui-select")
require("telescope").load_extension("packer")


local builtin = require('telescope.builtin')
local extensions = require("telescope").extensions

vim.keymap.set('n', "<leader>pf", builtin.git_files, {})
vim.keymap.set('n', "<C-p>", builtin.find_files, {})
vim.keymap.set('n', "<leader>ps", builtin.live_grep, {})
vim.keymap.set("n", "<leader>p", extensions.project.project)
-- vim.keymap.set('n', "<leader>pst", function()
-- 	builtin.grep_string({ search = vim.fn.input("Grep > ") })
-- end)



