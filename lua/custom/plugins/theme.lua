return {
  'Mofiqul/vscode.nvim',
  config = function()
    local c = require('vscode.colors').get_colors()
    require('vscode').setup({
      style = 'dark',
      color_overrides = {
        vscBack = '#000000',
        vscLineNumber = '#FFFFFF',
      }
    })
    vim.cmd [[ colorscheme vscode ]]
  end
}
