-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

vim.api.nvim_create_autocmd("BufReadPost", {
  callback = function()
    local full_path = vim.fn.expand("%:p")

    local git_root = vim.fn.finddir(".git", full_path .. ";")
    local root = git_root ~= "" and vim.fn.fnamemodify(git_root, ":h") or vim.fn.getcwd()
    local rel_path = vim.fn.fnamemodify(full_path, ":." .. root)

    local home = os.getenv("HOME")
    local dir = home .. "/.config/nvim"
    vim.fn.mkdir(dir, "p")

    local log_path = dir .. "/recent_files.log"

    vim.fn.system({
      "sed",
      "-i",
      "",
      string.format("/%s/d", rel_path),
      log_path,
    })

    -- Append new entry
    local log = io.open(log_path, "a")
    if log then
      local ts = os.date("%Y-%m-%d %H:%M:%S")
      log:write(string.format("[%s] %s\n", ts, rel_path))
      log:close()
    end
  end,
})
