vim.pack.add({
    "https://github.com/romgrk/barbar.nvim",
    "https://github.com/nvim-lualine/lualine.nvim",
    "https://github.com/windwp/nvim-autopairs",
    "https://github.com/lukas-reineke/indent-blankline.nvim",
    "https://github.com/hiphish/rainbow-delimiters.nvim",
    "https://github.com/folke/which-key.nvim"
})

require('lualine').setup()
require("nvim-autopairs").setup()
