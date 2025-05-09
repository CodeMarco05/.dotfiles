return {
  {
    "stevearc/aerial.nvim",
    dependencies = {
      "nvim-treesitter/nvim-treesitter", -- Optional but improves quality
      "nvim-lua/plenary.nvim",           -- Often needed for other plugins
      "neovim/nvim-lspconfig"            -- For LSP integration
    },
    config = function()
      require("aerial").setup({
        -- Optional config
        layout = {
          min_width = 30,
          default_direction = "right",
        },
        show_guides = true,
      })

      -- Toggle outline with <leader>o
      vim.keymap.set("n", "<leader>o", "<cmd>AerialToggle!<CR>", { desc = "Toggle Aerial outline" })
    end
  }
}
