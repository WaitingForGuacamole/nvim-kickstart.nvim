local M = {}

M.setup = function ()
    -- options
    -- vim.opt.relativenumber = true
    vim.opt.number = true
    vim.opt.colorcolumn = '128'
    vim.o.clipboard = 'unnamedplus'
    vim.opt.guicursor = 'n-v-c-sm:hor25,i-ci-ve:ver25,r-cr-o:hor10'
    vim.opt.termguicolors = true
    vim.opt.belloff = 'all'
end

return M

