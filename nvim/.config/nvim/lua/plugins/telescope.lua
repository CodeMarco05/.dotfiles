return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'BurntSushi/ripgrep'
    },
    config = function()

      local builtin = require("telescope.builtin")
      vim.keymap.set('n', '<leader>pf', builtin.find_files, {desc = "Search through files"})
      vim.keymap.set('n', '<leader>fg', builtin.live_grep, {desc = "Snipped search in project"})
      vim.keymap.set('n', '<leader>/', builtin.current_buffer_fuzzy_find, {desc = "Search in current file"})
    end
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      require("telescope").setup({
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {
            }
          }
        }
      })
      require("telescope").load_extension("ui-select")
    end
  }
}
