vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set relativenumber")
vim.cmd("set number")
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>sp", function()
  vim.opt.spell = not vim.opt.spell:get()
  vim.opt.spelllang = "en_us"
end, { desc = "Toggle spell check" })
--------------------------------------------------------------
-- This allows to send highlighted code to the tmux pane 2
-- vim.api.nvim_set_keymap('v', '<C-m>', ":w !tmux send-keys -t 2 \"$(cat)\" ENTER<CR>", { noremap = true, silent = true })
