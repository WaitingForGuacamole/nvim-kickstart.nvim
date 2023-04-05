return {
  { -- Set lualine as statusline
    'nvim-lualine/lualine.nvim',
    -- See `:help lualine.txt`
    opts = {
      options = {
        icons_enabled = true,
        theme = 'vscode',
        component_separators = '|',
        section_separators = '',
        disabled_filetypes = { 'neo-tree' },
      },
    },
  },
}
