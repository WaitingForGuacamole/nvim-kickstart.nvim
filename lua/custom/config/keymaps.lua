local M = {}

local function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.keymap.set(mode, lhs, rhs, options)
end

M.setup = function()
    -- Functional wrapper for mapping custom keybindings
    map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", {})
    map("n", "<leader>lg", "<cmd>Telescope live_grep<cr>", {})

    map('n', '<leader>sg', require('telescope.builtin').live_grep, { desc = '[S]earch by [G]rep' })
    map('n', '<leader>sd', require('telescope.builtin').diagnostics, { desc = '[S]earch [D]iagnostics' })
    -- Diagnostic keymaps
    map('n', '[d', vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic message" })
    map('n', ']d', vim.diagnostic.goto_next, { desc = "Go to next diagnostic message" })
    map('n', '<leader>e', vim.diagnostic.open_float, { desc = "Open floating diagnostic message" })
    map('n', '<leader>q', vim.diagnostic.setloclist, { desc = "Open diagnostics list" })
end

return M


