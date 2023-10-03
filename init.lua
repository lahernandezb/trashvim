
if vim.g.vscode then
  local keymap = vim.api.nvim_set_keymap

  local function v_notify(cmd)
    return string.format("<cmd>call VSCodeNotifyVisual('%s', 1)<CR>", cmd)
  end

  local function notify(cmd)
    return string.format("<cmd>call VSCodeNotify('%s')<CR>", cmd)
  end

  keymap('n', '<leader>', notify 'whichkey.show', { noremap = true, silent = true })
  keymap('n', 'gr', notify 'references-view.find', { noremap = true, silent = true })
  keymap('n', 'gR', notify 'references-view.findImplementations', { noremap = true, silent = true })
  keymap('n', 'gO', notify 'outline.focus', { noremap = true, silent = true })
  --[[ keymap('n', 'gO', notify 'workbench.action.gotoSymbol', { noremap = true, silent = true }) ]]
  keymap('n', 'gl', notify 'editor.action.showHover', { noremap = true, silent = true })
  keymap('n', '-', notify 'workbench.files.action.showActiveFileInExplorer', { noremap = true, silent = true })
  keymap('n', '<C-j>', notify 'workbench.action.navigateDown', { noremap = true, silent = true })
  keymap('n', '<C-k>', notify 'workbench.action.navigateUp', { noremap = true, silent = true })
  keymap('n', '<C-h>', notify 'workbench.action.navigateLeft', { noremap = true, silent = true })
  keymap('n', '<C-l>', notify 'workbench.action.navigateRight', { noremap = true, silent = true })
  keymap('n', 'gcc', v_notify 'editor.action.commentLine', { noremap = true, silent = true })
  keymap('v', 'gc', v_notify 'editor.action.blockComment', { noremap = true, silent = true })
  keymap('v', '*', 'y/\\V<C-r>"<CR>N', { noremap = true, silent = true })

  keymap("n", "<C-d>", "<C-d>zz", { noremap = true, silent = true })
  keymap("n", "<C-u>", "<C-u>zz", { noremap = true, silent = true })
  keymap("n", "n", "nzzzv", { noremap = true, silent = true })
  keymap("n", "N", "Nzzzv", { noremap = true, silent = true })
else
  require("options")
  require("plugins")
end
