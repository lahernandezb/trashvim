
local keymap = vim.api.nvim_set_keymap

if vim.g.vscode then
  local function v_notify(cmd)
    return string.format("<cmd>call VSCodeNotifyVisual('%s', 1)<CR>", cmd)
  end

  local function notify(cmd)
    return string.format("<cmd>call VSCodeNotify('%s')<CR>", cmd)
  end

  keymap('n', '<leader>', notify 'whichkey.show', { noremap = true, silent = true})
  keymap('n', 'gr', notify 'references-view.find', { noremap = true, silent = true })
  keymap('n', 'gR', notify 'references-view.findImplementations', { noremap = true, silent = true })
  --[[ keymap('n', 'gO', notify 'outline.focus', { noremap = true, silent = true }) ]]
  keymap('n', 'gO', notify 'workbench.action.gotoSymbol', { noremap = true, silent = true })
  keymap('n', 'gl', notify 'editor.action.showHover', { noremap = true, silent = true })
  keymap('n', '-', notify 'workbench.files.action.showActiveFileInExplorer', { noremap = true, silent = true })
  keymap('n', '<C-j>', notify 'workbench.action.navigateDown', { noremap = true, silent = true })
  keymap('n', '<C-k>', notify 'workbench.action.navigateUp', { noremap = true, silent = true })
  keymap('n', '<C-h>', notify 'workbench.action.navigateLeft', { noremap = true, silent = true })
  keymap('n', '<C-l>', notify 'workbench.action.navigateRight', { noremap = true, silent = true })
  keymap('n', 'gcc', v_notify 'editor.action.commentLine', { noremap = true, silent = true })
  keymap('v', 'gc', v_notify 'editor.action.blockComment', { noremap = true, silent = true })
  keymap('v', '*', 'y/\\V<C-r>"<CR>N', { noremap = true, silent = true })

  keymap("n", "<C-d>", "<C-D>zz", { noremap = true, silent = true })
  keymap("n", "<C-u>", "<C-U>zz", { noremap = true, silent = true })
  keymap("n", "n", "nzzzv", { noremap = true, silent = true })
  keymap("n", "N", "Nzzzv", { noremap = true, silent = true })

  -- [[ vim.cmd [[source $HOME/.config/nvim/vscode/settings.vim]] ]]
else
  require("config.plugins")
  require("import")
  require("config.impatient")
  require("config.options")
  require("config.notify")
  require("config.keymaps")
  require("config.colorschemes")
  require("config.better-escape")
  require("config.treesitter")
  require("config.autopairs")
  require("config.copilot")
  require("config.cmp")
  require("config.lsp")
  require("config.neo-tree")
  require("config.which-key")
  require("config.gitsigns")
  require("config.lualine")
  require("config.bufferline")
  require("config.harpoon")
  require("config.telescope")
  require("config.symbols-outline")
  require("config.alpha")
  require("config.lastplace")
  require("config.dressing")
  require("config.comment")
  require("config.indent_blankline")
  require("config.tabout")
  require("config.scrollbar")
  require("config.hlslens")
  require("config.hop")
  require("config.surround")
  require("config.toggleterm")
  require("config.cursorline")
  require("config.color-highlight")
  require("config.tmux")
  require("config.git-conflict")
  require("config.diffview")
end
