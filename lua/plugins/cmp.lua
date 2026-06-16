vim.pack.add({
    "https://github.com/Saghen/blink.lib",
    "https://github.com/Saghen/blink.cmp",
})

local bcmp = require("blink-cmp")
bcmp.build():pwait()
bcmp.setup({
    completion = {
      menu = {
        -- Disable automatically showing the menu while typing, instead press `<C-space>` (by default) to show it manually
        auto_show = true,
      }
    },
    keymap = {
        preset = "default",

        ["<C-space>"] = {"show", "hide"},
        ['<Tab>'] = { 'select_next', 'fallback' },
        ['<CR>'] = { 'select_and_accept', 'fallback' },
    }
})
