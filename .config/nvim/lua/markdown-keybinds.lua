-- Mathsnippets for latex
vim.keymap.set("n", "<leader>maq", function()
	vim.api.nvim_put({ "\\forall" }, "", false, true)
end, { desc = "Allquantor" })

vim.keymap.set("n", "<leader>meq", function()
	vim.api.nvim_put({ "\\exists" }, "", false, true)
end, { desc = "Existenzquantor" })

vim.keymap.set("n", "<leader>mssub", function()
	vim.api.nvim_put({ "\\sqsubset" }, "", false, true)
end, { desc = "Square subset" })

vim.keymap.set("n", "<leader>mssubeq", function()
	vim.api.nvim_put({ "\\sqsubseteq" }, "", false, true)
end, { desc = "Square subset equal" })

vim.keymap.set("n", "<leader>mfr", function()
	vim.api.nvim_put({ "\\frac{}{}" }, "", false, true)
end, { desc = "Fraction" })

vim.keymap.set("n", "<leader>min", function()
	vim.api.nvim_put({ "\\in" }, "", false, true)
end, { desc = "Element of" })

vim.keymap.set("n", "<leader>msub", function()
	vim.api.nvim_put({ "\\subset" }, "", false, true)
end, { desc = "Subset" })

vim.keymap.set("n", "<leader>msubeq", function()
	vim.api.nvim_put({ "\\subseteq" }, "", false, true)
end, { desc = "Subset equal" })

vim.keymap.set("n", "<leader>mx", function()
	vim.api.nvim_put({ "\\times" }, "", false, true)
end, { desc = "Kreutzprodukt" })

vim.keymap.set("n", "<leader>mspace", function()
	vim.api.nvim_put({ "&nbsp;" }, "", false, true)
end, { desc = "Small space" })

vim.keymap.set("n", "<leader>mi", function()
	vim.api.nvim_put({ '<img src="" alt="" height="200">' }, "l", false, true)
end, { desc = "Insert HTML image tag" })
