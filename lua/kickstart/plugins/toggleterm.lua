-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

---@module 'lazy'
---@type LazySpec
return {
  'akinsho/toggleterm.nvim',
  version = '*',
  config = function()
    require('toggleterm').setup {
      direction = 'float',
      float_opts = {
        border = 'rounded',
      },
    }

    -- Keymap (works in normal + terminal mode)
    vim.keymap.set({ 'n', 't' }, '<F5>', '<cmd>ToggleTerm<CR>', { silent = true })
  end,
}
