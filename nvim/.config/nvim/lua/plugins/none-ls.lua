return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")
    local mason = require("mason")

    -- Ensure that latexindent, stylua, prettier, and other tools are installed
    mason.setup({
      ensure_installed = { 
        "latexindent",  -- LaTeX formatting tool
        "stylua",       -- Lua code formatter
        "prettier",     -- JavaScript, HTML, CSS formatter
      },
    })

    -- Setup null-ls with the installed tools
    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua,      -- Lua formatting
        null_ls.builtins.formatting.prettier,    -- Prettier formatting
      },
    })

    -- Key mapping for formatting LaTeX (and other supported formats)
    vim.keymap.set("n", "<leader>ff", function()
      vim.lsp.buf.format()  -- This will trigger formatting for the current buffer
    end, { noremap = true, silent = true })
  end,
}

