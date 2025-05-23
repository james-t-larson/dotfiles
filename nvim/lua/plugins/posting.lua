return {
  {
    dir = "~/.local/share/nvim/lazy/posting.nvim",
    config = function()
      require("posting").setup({
        keybinds = {
          {
            binding = "<leader>pd",
            command = ":OpenPosting --collection posting-collection --env posting-envs/dev.env<CR>",
            desc = "Open Posting with dev env",
          },
          {
            binding = "<leader>ps",
            command = ":OpenPosting --collection posting-collection --env posting-envs/staging.env<CR>",
            desc = "Open Posting with dev env",
          },
        },
      })
    end,
  },
}
