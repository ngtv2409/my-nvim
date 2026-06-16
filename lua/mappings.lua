local map = vim.keymap.set
local defaults = { noremap = true, silent = true }

vim.g.mapleader = " "

map('i', "jk", "<esc>", defaults)
map("x", ">", ">gv", defaults)
map("x", "<", "<gv", defaults)
map("n", "<leader>s", ":w<CR>", defaults)

-- plugins
-- nvim-tree
map('n', '<leader>n', ':NvimTreeToggle<CR>', defaults)
-- lsp
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(ev)
    local opts = { buffer = ev.buf }

    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
    vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
    vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
  end,
})
-- barbar
-- navigation
map("n", "<leader>,", "<Cmd>BufferPrevious<CR>", { silent = true })
map("n", "<leader>.", "<Cmd>BufferNext<CR>", { silent = true })

-- direct jump
for i = 1, 9 do
  map("n", "<A-" .. i .. ">", "<Cmd>BufferGoto " .. i .. "<CR>", { silent = true })
end

-- pick
map("n", "<A-p>", "<Cmd>BufferPick<CR>", { silent = true })
map("n", "<A-P>", "<Cmd>BufferPickDelete<CR>", { silent = true })

-- close
map("n", "<A-c>", "<Cmd>BufferClose<CR>", { silent = true })
map("n", "<A-C>", "<Cmd>BufferClose!<CR>", { silent = true })

-- move buffers
map("n", "<A-S-k>", "<Cmd>BufferMovePrevious<CR>", { silent = true })
map("n", "<A-S-j>", "<Cmd>BufferMoveNext<CR>", { silent = true })

-- misc
