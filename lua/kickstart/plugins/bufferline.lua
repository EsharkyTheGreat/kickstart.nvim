---@module 'lazy'
---@type LazySpec
return {
  'akinsho/bufferline.nvim',
  version = '*',
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    vim.opt.termguicolors = true
    require('bufferline').setup {
      options = {
        offsets = {
          {
            filetype = 'neo-tree',
            text = function() return '📁 Neo-tree' end,
            highlight = 'Directory',
            text_align = 'center',
            separator = true, -- adds a divider
          },
        },
      },
    }
  end,
}
