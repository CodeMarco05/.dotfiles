-- Mathsnippets for latex
vim.keymap.set("n", "<leader>maq", function()
  vim.api.nvim_put({ "\\forall" }, "", false, true)
end, { desc = "Allquantor" })

vim.keymap.set("n", "<leader>meq", function()
  vim.api.nvim_put({ "\\exists" }, "", false, true)
end, { desc = "Existenzquantor" })

vim.keymap.set("n", "<leader>ms", function()
  vim.api.nvim_put({ "\\sqsubset" }, "", false, true)
end, { desc = "subset" })

vim.keymap.set("n", "<leader>mss", function()
  vim.api.nvim_put({ "\\sqsubseteq" }, "", false, true)
end, { desc = "square subset" })

vim.keymap.set("n", "<leader>mfr", function()
  vim.api.nvim_put({ "\\frac{}{}" }, "", false, true)
end, { desc = "fraction" })

