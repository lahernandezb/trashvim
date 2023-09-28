--[[ import("catppuccin", function(catppuccin) ]]
--[[   catppuccin.setup({ ]]
--[[     flavour = "mocha", -- latte, frappe, macchiato, mocha ]]
--[[     term_colors = true, ]]
--[[     transparent_background = true, ]]
--[[     no_italic = false, ]]
--[[     no_bold = false, ]]
--[[     styles = { ]]
--[[       comments = {}, ]]
--[[       conditionals = {}, ]]
--[[       loops = {}, ]]
--[[       functions = {}, ]]
--[[       keywords = {}, ]]
--[[       strings = {}, ]]
--[[       variables = {}, ]]
--[[       numbers = {}, ]]
--[[       booleans = {}, ]]
--[[       properties = {}, ]]
--[[       types = {}, ]]
--[[     }, ]]
--[[     color_overrides = { ]]
--[[       mocha = { ]]
--[[       }, ]]
--[[     }, ]]
--[[     highlight_overrides = { ]]
--[[       mocha = function(C) ]]
--[[         return { ]]
--[[           TabLineSel = { bg = C.pink }, ]]
--[[           NvimTreeNormal = { bg = C.none }, ]]
--[[           CmpBorder = { fg = C.surface2 }, ]]
--[[           Pmenu = { bg = C.none }, ]]
--[[           NormalFloat = { bg = C.none }, ]]
--[[           TelescopeBorder = { link = "FloatBorder" }, ]]
--[[         } ]]
--[[       end, ]]
--[[     }, ]]
--[[   }) ]]
--[[   vim.cmd.colorscheme("catppuccin") ]]
--[[ end) ]]

import("rose-pine", function(pine)
  pine.setup({
    variant = 'main',
    disable_background = true,
    dim_nc_background = true
  })
  vim.cmd.colorscheme("rose-pine")
end)

function ColorMyPencils(colorscheme)
  colorscheme = colorscheme or "rose-pine"
  vim.cmd.colorscheme(colorscheme)
  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end
