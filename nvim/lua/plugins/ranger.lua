return {
  "kelly-lin/ranger.nvim",
  cmd = "Ranger",
  keys = {
    { "<leader>rr", "<cmd>Ranger<cr>", desc = "Open Ranger" },
  },
  opts = {
    ui = {
      border = "rounded",
      height = 0.85,
      width = 0.90,
      x = 0.5,
      y = 0.30,
    },
    replace_netrw = true,
    enable_cmds = true,
  },
}
