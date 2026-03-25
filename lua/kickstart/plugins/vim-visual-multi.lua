-- lua/custom/plugins/vim-visual-multi.lua
-- VSCode-like multi-cursor functionality for Neovim

return {
  'mg979/vim-visual-multi',
  branch = 'master',
  event = 'VeryLazy',
  config = function()
    -- Configure keymaps to be similar to VSCode
    vim.g.VM_maps = {
      -- Core multi-cursor functionality
      ['Find Under'] = '<C-d>', -- Ctrl+D (like VSCode Cmd+D)
      ['Find Subword Under'] = '<C-d>', -- Same as above for subwords
      ['Select All'] = '<C-S-l>', -- Ctrl+Shift+L (select all occurrences)
      ['Start Regex Search'] = '<C-f>', -- Ctrl+F for regex search

      -- Cursor management
      ['Add Cursor Down'] = '<C-Down>', -- Add cursor below current line
      ['Add Cursor Up'] = '<C-Up>', -- Add cursor above current line
      ['Add Cursor At Pos'] = '<C-LeftMouse>', -- Click to add cursor

      -- Selection control
      ['Skip Region'] = '<C-x>', -- Skip current selection, find next
      ['Remove Region'] = '<C-z>', -- Remove current selection
      ['Increase'] = '+', -- Increase selection
      ['Decrease'] = '-', -- Decrease selection

      -- Navigation
      ['Goto Next'] = '<C-n>', -- Go to next selection
      ['Goto Prev'] = '<C-p>', -- Go to previous selection

      -- Editing
      ['Switch Mode'] = '<Tab>', -- Switch between cursor and extend mode
      ['Find Next'] = 'n', -- Find next occurrence
      ['Find Prev'] = 'N', -- Find previous occurrence

      -- Undo/Redo
      ['Undo'] = 'u', -- Undo multi-cursor operation
      ['Redo'] = '<C-r>', -- Redo multi-cursor operation

      -- Exit
      ['Exit'] = '<Esc>', -- Exit multi-cursor mode
    }

    -- Visual settings
    vim.g.VM_theme = 'iceblue'
    vim.g.VM_highlight_matches = 'underline'

    -- Show information in statusline
    vim.g.VM_set_statusline = 2
    vim.g.VM_silent_exit = 1

    -- Custom settings for better performance
    vim.g.VM_quit_after_leaving_insert_mode = 0
    vim.g.VM_live_editing = 1
    vim.g.VM_mouse_mappings = 1

    -- Leader mappings for additional functionality
    vim.g.VM_leader = {
      ['default'] = '\\',
      ['visual'] = '\\',
      ['buffer'] = 'z',
    }

    -- Case sensitivity settings
    vim.g.VM_case_setting = 'smart' -- Smart case like Vim's search

    -- Additional leader-based commands
    vim.g.VM_custom_remaps = {
      ['<C-c>'] = '<Esc>', -- Alternative exit key
    }
  end,
  keys = {
    -- Document the main keybindings for which-key
    { '<C-d>', desc = 'Multi-cursor: Select word/next occurrence' },
    { '<C-S-l>', desc = 'Multi-cursor: Select all occurrences' },
    { '<C-Up>', desc = 'Multi-cursor: Add cursor above' },
    { '<C-Down>', desc = 'Multi-cursor: Add cursor below' },
    { '<C-x>', desc = 'Multi-cursor: Skip current selection' },
    { '<C-z>', desc = 'Multi-cursor: Remove current selection' },
  },
}
