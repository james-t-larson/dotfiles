return {
  lazy = false,
  "romariorobby/taskell.nvim",
  cmd = "Taskell",
  init = function()
    require("taskell").create_commands()
    vim.api.nvim_set_keymap("n", "<leader>tt", ":Taskell taskell.md<CR>", { noremap = true, silent = true })
  end,
}
