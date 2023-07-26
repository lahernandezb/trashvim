import("gitsigns", function(gitsigns)
  gitsigns.setup({
    signs = {
      -- The text key for these might be all we need since the rest get added as a default
      -- https://github.com/lewis6991/gitsigns.nvim/blob/11b80e7eea249affc8776483272bcfc627b5552a/lua/gitsigns/config.lua#L131
      -- 
      add          = { hl = "GitSignsAdd", text = "▎", numhl = "GitSignsAddNr", linehl = "GitSignsAddLn" },
      change       = { hl = "GitSignsChange", text = "▎", numhl = "GitSignsChangeNr", linehl = "GitSignsChangeLn" },
      delete       = { hl = "GitSignsDelete", text = "_", numhl = "GitSignsDeleteNr", linehl = "GitSignsDeleteLn" },
      topdelete    = { hl = "GitSignsDelete", text = "‾", numhl = "GitSignsDeleteNr", linehl = "GitSignsDeleteLn" },
      changedelete = {
        hl = "GitSignsChange",
        text = "~",
        numhl = "GitSignsChangeNr",
        linehl = "GitSignsChangeLn",
      },
      untracked    = {
        hl = 'GitSignsUntracked',
        text = '┆',
        numhl = 'GitSignsUntrackedNr',
        linehl = 'GitSignsUntrackedLn',
      },
    },
    current_line_blame = true,
    current_line_blame_opts = {
      virt_text = true,
      virt_text_pos = "eol",
      delay = 1000,
      ignore_whitespace = false,
    },
    current_line_blame_formatter_opts = {
      relative_time = true,
    },
  })
end)
