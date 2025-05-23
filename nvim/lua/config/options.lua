-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--

vim.cmd([[autocmd BufWritePre *.js,*.ts,*.vue lua vim.lsp.buf.format()]])
vim.opt.laststatus = 0
