-- lua/plugins/toggle-term.lua

return {
	"akinsho/toggleterm.nvim",
	version = "*", -- Optional: lock to a specific version or use latest
	config = function()
		require("toggleterm").setup({
			-- Keybinding to toggle terminal
			open_mapping = [[<C-t>]],

			-- Set the terminal direction to horizontal split
			direction = "float",

			float_opts = {
        border = 'curved',
				winblend = 0,
        start_in_insert = true,

			},

			-- Floating window options

			-- Other options
			size = 15, -- Height of the horizontal terminal split
			start_in_insert = true, -- Automatically enter insert mode when terminal opens
			close_on_exit = true, -- Close the terminal when the process exits
			shell = vim.o.shell, -- Use the default shell
		})
	end,
}
