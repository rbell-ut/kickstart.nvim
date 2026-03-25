return {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  lazy = false,
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require('nvim-tree').setup {
      sort_by = 'case_sensitive',
      view = {
        width = 30,
        adaptive_size = true,
      },
      renderer = {
        group_empty = true,
        highlight_git = true,
        icons = {
          show = {
            git = true,
            folder = true,
            file = true,
            folder_arrow = true,
          },
        },
      },
      filters = {
        dotfiles = false, -- Set to true if you want to hide dotfiles
      },
      git = {
        enable = true,
        ignore = false, -- Don't ignore files based on .gitignore
      },
      actions = {
        open_file = {
          quit_on_open = false, -- Don't close the tree when opening a file
          resize_window = true, -- Resize tree when opening a file
          window_picker = {
            enable = true, -- Helps choose which window to open the file in
          },
        },
      },
      update_focused_file = {
        enable = true, -- Keep tree in sync with current file
        update_root = false, -- Don't change root dir as you navigate
      },
    }

    -- Better keymaps
    vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', { desc = 'Toggle NvimTree' })
    vim.keymap.set('n', '<leader>fe', ':NvimTreeFocus<CR>', { desc = 'Focus NvimTree' })
    vim.keymap.set('n', '<leader>fr', ':NvimTreeRefresh<CR>', { desc = 'Refresh NvimTree' })
  end,
}
