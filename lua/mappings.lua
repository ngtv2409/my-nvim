local map = vim.keymap.set
local defaults = { noremap = true, silent = true }

vim.g.mapleader = " "

map('i', "jk", "<esc>", defaults)
map("x", ">", ">gv", defaults)
map("x", "<", "<gv", defaults)
map("n", "<leader>s", ":w<CR>", defaults)

vim.keymap.set({ 'n', 'x', 'o' }, 's', '<Plug>(leap-forward)')
vim.keymap.set('n',               'S', '<Plug>(leap-from-window)')

-- plugins
-- nvim-tree
map('n', '<leader>n', ':NvimTreeToggle<CR>', defaults)
-- lsp prefix l
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(ev)
    local opts = { buffer = ev.buf }

    vim.keymap.set("n", "<leader>ld", vim.lsp.buf.definition, opts)
    vim.keymap.set("n", "<leader>lr", vim.lsp.buf.references, opts)
    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
    vim.keymap.set("n", "<leader>ln", vim.lsp.buf.rename, opts)
    vim.keymap.set("n", "<leader>la", vim.lsp.buf.code_action, opts)
  end,
})
-- barbar prefix b
-- navigation
map("n", ",", "<Cmd>BufferPrevious<CR>", { silent = true })
map("n", ".", "<Cmd>BufferNext<CR>", { silent = true })

-- direct jump
for i = 1, 9 do
  map("n", "<A-" .. i .. ">", "<Cmd>BufferGoto " .. i .. "<CR>", { silent = true })
end

-- pick
map("n", "<leader>bp", "<Cmd>BufferPick<CR>", { silent = true })
map("n", "<leader>bd", "<Cmd>BufferPickDelete<CR>", { silent = true })

-- close
map("n", "<leader>bc", "<Cmd>BufferClose<CR>", { silent = true })
map("n", "<leader>bC", "<Cmd>BufferClose!<CR>", { silent = true })

-- move buffers
map("n", "<leader>b,", "<Cmd>BufferMovePrevious<CR>", { silent = true })
map("n", "<leader>b.", "<Cmd>BufferMoveNext<CR>", { silent = true })

-- misc
