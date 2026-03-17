-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

---@module 'lazy'
---@type LazySpec
return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  lazy = false,
  keys = {
    { '\\', '<cmd>Neotree filesystem reveal left<cr>', desc = 'Explorer', silent = true },
    { '<leader>es', '<cmd>Neotree document_symbols reveal right<cr>', desc = 'Symbols' },
    { '<leader>eg', '<cmd>Neotree git_status toggle float<cr>', desc = 'Git' },
  },
  config = function()
    require('neo-tree').setup {
      close_if_last_window = true,
      popup_border_style = 'rounded',

      sources = {
        'filesystem',
        'buffers',
        'git_status',
        'document_symbols',
      },
      filesystem = {
        follow_current_file = {
          enabled = true,
        },
        hijack_netrw_behavior = 'open_default',
        window = {
          mappings = {
            ['\\'] = 'close_window',
          },
        },
      },

      window = {
        position = 'left', -- default (filesystem)
        width = 30,
      },
    }
  end,
}
