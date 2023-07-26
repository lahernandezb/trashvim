vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

import("neo-tree", function(neoTree)
  neoTree.setup({
    close_if_last_window = true,
    hide_root_node = true,
    popup_border_style = "rounded",
    enable_git_status = true,
    enable_diagnostics = true,
    window = {
      mappings = {
        ["l"] = "open",
        ["o"] = "open",
      },
    },
    filesystem = {
      filtered_items = {
        hide_dotfiles = false,
        never_show = {
          ".git",
          ".DS_Store",
        },
      },
      follow_current_file = {
        enabled = true
      },
      use_libuv_file_watcher = true,
    },
    source_selector = {
      winbar = true,
    },

    default_component_configs = {
      git_status = {
        symbols = {
          -- Change type
          added     = "",      -- or "✚", but this is redundant info if you use git_status_colors on the name
          modified  = "",      -- or "", but this is redundant info if you use git_status_colors on the name
          deleted   = "✖",   -- this can only be used in the git_status source
          renamed   = "󰁕",  -- this can only be used in the git_status source
          -- Status type
          untracked = "",
          ignored   = "",
          unstaged  = "󰄱",
          staged    = "",
          conflict  = "",
        }
      },
    }
  })
end)
