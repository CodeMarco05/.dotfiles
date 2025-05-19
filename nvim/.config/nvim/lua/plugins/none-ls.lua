return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")
    local mason = require("mason")

    -- Setup Mason to ensure formatter tools are installed
    mason.setup({
      ensure_installed = {
        "latexindent", -- LaTeX
        "stylua",  -- Lua
        "prettier", -- JS/TS/JSON/HTML/CSS/Markdown/YAML/etc.
      },
    })

    -- Setup null-ls with the formatters
    null_ls.setup({
      sources = {
        -- Lua formatter
        null_ls.builtins.formatting.stylua,

        -- Prettier for supported filetypes
        null_ls.builtins.formatting.prettier.with({
          filetypes = {
            "javascript",
            "javascriptreact",
            "typescript",
            "typescriptreact",
            "vue",
            "css",
            "scss",
            "less",
            "html",
            "json",
            "jsonc",
            "yaml",
            "markdown",
            "markdown.mdx",
            "graphql",
            "handlebars",
          },
          extra_args = {
            "--print-width",
            "100",
            "--tab-width",
            "2",
            "--single-quote",
            "false",
            "--trailing-comma",
            "es5",
            "--semi",
            "--arrow-parens",
            "always",
            "--bracket-spacing",
            "--end-of-line",
            "lf",
            "--prose-wrap", "always",
          },
        }),

        -- Add more formatters here if needed
      },
    })

    -- Format on command
    vim.keymap.set("n", "<leader>ff", function()
      vim.lsp.buf.format()
    end, { noremap = true, silent = true })
  end,
}
