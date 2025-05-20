return {
	{
		"ellisonleao/gruvbox.nvim",
		priority = 1000,
		config = function()
			--vim.cmd.colorscheme("gruvbox")
		end,
	},
	{
		"bluz71/vim-nightfly-colors",
		name = "nightfly",
		lazy = false,
		priority = 1000,
		config = function()
			--vim.cmd.colorscheme("nightfly")
		end,
	},
	{
		"catppuccin/nvim",
		name = "catppuccin",
		lazy = false, -- Load immediately
		priority = 1000, -- Load before other plugins
		config = function()
			require("catppuccin").setup({
				flavor = "macchiato", -- Options: latte, frappe, macchiato, mocha
				integrations = {
					treesitter = true,
					cmp = true,
					gitsigns = true,
					telescope = true,
					notify = false,
				},
			})
			--vim.cmd.colorscheme("catppuccin") -- Apply the theme
		end,
	},
	{

		"navarasu/onedark.nvim",
		priority = 1000, -- make sure to load this before all the other start plugins
		config = function()
			require("onedark").setup({
				style = "deep",
				--style = "light",
			})
			-- Enable theme
			require("onedark").load()
		end,
	},
}
