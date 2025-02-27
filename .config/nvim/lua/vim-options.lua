vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")


-- filetype init for custom options
vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  command = "setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab"
})


vim.g.mapleader = " "

vim.opt.clipboard = "unnamedplus"

vim.opt.number = true
vim.opt.relativenumber = true

vim.api.nvim_set_keymap("n", "<Left>", "<C-w>h", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Right>", "<C-w>l", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Up>", "<C-w>k", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Down>", "<C-w>j", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<Leader>e", "<cmd>lua vim.diagnostic.open_float()<CR>", { noremap = true, silent = true })

vim.opt.scrolloff = 3
vim.opt.sidescrolloff = 5
vim.opt.smoothscroll = true


-- Slow down mouse scroll
vim.api.nvim_set_keymap('n', '<ScrollWheelUp>', '2k', { noremap = true })
vim.api.nvim_set_keymap('n', '<ScrollWheelDown>', '2j', { noremap = true })


--vim.diagnostic.config({
--    virtual_text = false,  -- Disable inline errors
--   signs = true,          -- Keep signs in the gutter
--   underline = true,      -- Keep underline for errors
--})
