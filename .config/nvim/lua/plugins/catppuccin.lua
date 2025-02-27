return {
  "catppuccin/nvim",
  name = "catppuccin",
  lazy = false,    -- Load immediately
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
}

