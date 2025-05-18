return {
	"ThePrimeagen/harpoon",
	config = function()
		-- Initialize Harpoon with custom settings
		require("harpoon").setup({
			global_settings = {
				save_on_toggle = false, -- Don't auto-save marks when toggling the menu
				enter_on_sendcmd = true, -- Auto-enter terminal mode when sending commands
			},
		})

		-- Keybinding to open Harpoon quick menu with Ctrl+h
		vim.keymap.set("n", "<C-h>", function()
			require("harpoon.ui").toggle_quick_menu()
		end, { noremap = true, silent = true, desc = "Open harpoon gui" })

		-- Keybinding to add the current file to Harpoon with Ctrl+a
		vim.keymap.set("n", "<leader>ha", function()
			require("harpoon.mark").add_file()
		end, { noremap = true, silent = true, desc = "Add file to harpoon" })

		vim.keymap.set("n", "<leader>hr", function()
			require("harpoon.mark").rm_file()
		end, { noremap = true, silent = true, desc = "Remove file from harpoon" })

		-- Keybindings to navigate between files in Harpoon
		vim.keymap.set("n", "<leader>1", function()
			require("harpoon.ui").nav_file(1)
		end, { noremap = true, silent = true, desc = "first harpoon file" })

		vim.keymap.set("n", "<leader>2", function()
			require("harpoon.ui").nav_file(2)
		end, { noremap = true, silent = true, desc = "second harpoon file" })

		vim.keymap.set("n", "<leader>3", function()
			require("harpoon.ui").nav_file(3)
		end, { noremap = true, silent = true, desc = "third harpoon file" })

		vim.keymap.set("n", "<leader>4", function()
			require("harpoon.ui").nav_file(4)
		end, { noremap = true, silent = true, desc = "fourth harpoon file" })
	end,
}
