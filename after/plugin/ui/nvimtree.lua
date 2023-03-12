local api = require("nvim-tree.api")


local tree_actions = {
	{ name = "Create node",         handler = api.fs.create, },
	{ name = "Remove node",         handler = api.fs.remove },
	{ name = "Trash node",          handler = api.fs.trash },
	{ name = "Rename node",         handler = api.fs.rename },
	{ name = "Fully rename node",   handler = api.fs.rename_sub },
	{ name = "Copy",                handler = api.fs.copy.node },
	-- ... other custom actions you may want to display in the menu
}

local function tree_actions_menu(node)
	local entry_maker = function(menu_item)
		return {
			value = menu_item,
			ordinal = menu_item.name,
			display = menu_item.name,
		}
	end

	local finder = require("telescope.finders").new_table({
		results = tree_actions,
		entry_maker = entry_maker,
	})

	local sorter = require("telescope.sorters").get_generic_fuzzy_sorter()

	local default_options = {
		finder = finder,
		sorter = sorter,
		attach_mappings = function(prompt_buffer_number)
			local actions = require("telescope.actions")

			-- On item select
			actions.select_default:replace(function()
				local state = require("telescope.actions.state")
				local selection = state.get_selected_entry()
				-- Closing the picker
				actions.close(prompt_buffer_number)
				-- Executing the callback
				selection.value.handler(node)
			end)

			-- The following actions are disabled in this example
			-- You may want to map them too depending on your needs though
			actions.add_selection:replace(function() end)
			actions.remove_selection:replace(function() end)
			actions.toggle_selection:replace(function() end)
			actions.select_all:replace(function() end)
			actions.drop_all:replace(function() end)
			actions.toggle_all:replace(function() end)

			return true
		end,
	}

	-- Opening the menu
	require("telescope.pickers").new({ prompt_title = "Tree menu" }, default_options):find()
end







require("nvim-tree").setup {
    renderer = {
        group_empty = true,
    },
    view = {
        mappings = {
            list = {
                { key = "<C-space>", action = "tree actions", action_cb = tree_actions_menu }
            }
        }
    }
}

vim.keymap.set("n", "<C-n>", vim.cmd.NvimTreeToggle)

