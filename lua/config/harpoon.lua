import("harpoon", function(harpoon)
  harpoon.setup({
    menu = {
      width = vim.api.nvim_win_get_width(0) - 4,
    }
  })
end)
