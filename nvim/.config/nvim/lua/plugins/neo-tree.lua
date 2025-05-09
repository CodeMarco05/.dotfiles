return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal left toggle <CR>", {})

		require("neo-tree").setup({
			filesystem = {
				filtered_items = {
					visible = true, -- Default: hidden files are NOT visible
					hide_dotfiles = true, -- Show dotfiles (e.g., .git, .env)
					hide_gitignored = true, -- Show git-ignored files
				},
			},
		})
	end,
}
