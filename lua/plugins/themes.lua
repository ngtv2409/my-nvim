vim.pack.add { { src = "https://github.com/catppuccin/nvim", name = "catppuccin" } }

require("catppuccin").setup({
    background = { light = "latte", dark = "mocha" }, -- latte, frappe, macchiato, mocha
    show_end_of_buffer = false, -- show the '~' characters after the end of buffers
    term_colors = true,
    no_italic = true,
    styles = {
        comments = {},
        functions = { "bold" },
        keywords = {},
        operators = { "bold" },
        conditionals = { "bold" },
        loops = { "bold" },
        booleans = { "bold" },
        numbers = {},
        types = {},
        strings = {},
        variables = {},
        properties = {},
    },
    color_overrides = {},
    highlight_overrides = {
        ---@param cp palette
        all = function(cp)
            return {
                -- For base configs
                NormalFloat = { fg = cp.text },
                FloatBorder = {
                    fg = cp.blue or cp.mantle,
                    bg = cp.none or cp.mantle,
                },
                CursorLineNr = { fg = cp.green },

                -- For native lsp configs
                DiagnosticVirtualTextError = { bg = cp.none },
                DiagnosticVirtualTextWarn = { bg = cp.none },
                DiagnosticVirtualTextInfo = { bg = cp.none },
                DiagnosticVirtualTextHint = { bg = cp.none },
                LspInfoBorder = { link = "FloatBorder" },

                -- For mason.nvim
                MasonNormal = { link = "NormalFloat" },

                -- For indent-blankline
                IblIndent = { fg = cp.surface0 },
                IblScope = { fg = cp.surface2, style = { "bold" } },

                -- For nvim-cmp and wilder.nvim
                Pmenu = { fg = cp.overlay2, bg = cp.none or cp.base },
                PmenuBorder = { fg = cp.surface1, bg = cp.none or cp.base },
                PmenuSel = { bg = cp.green, fg = cp.base },
                CmpItemAbbr = { fg = cp.overlay2 },
                CmpItemAbbrMatch = { fg = cp.blue, style = { "bold" } },
                CmpDoc = { link = "NormalFloat" },
                CmpDocBorder = {
                    fg = cp.surface1 or cp.mantle,
                    bg = cp.none or cp.mantle,
                },

                -- For fidget
                FidgetTask = { bg = cp.none, fg = cp.surface2 },
                FidgetTitle = { fg = cp.blue, style = { "bold" } },

                -- For nvim-notify
                NotifyBackground = { bg = cp.base },

                -- For nvim-tree
                NvimTreeRootFolder = { fg = cp.pink },
                NvimTreeIndentMarker = { fg = cp.surface2 },

                -- For trouble.nvim
                TroubleNormal = { bg = cp.none or cp.base },
                TroubleNormalNC = { bg = cp.none or cp.base },

                -- For telescope.nvim
                TelescopeMatching = { fg = cp.lavender },
                TelescopeResultsDiffAdd = { fg = cp.green },
                TelescopeResultsDiffChange = { fg = cp.yellow },
                TelescopeResultsDiffDelete = { fg = cp.red },

                -- For glance.nvim
                GlanceWinBarFilename = { fg = cp.subtext1, style = { "bold" } },
                GlanceWinBarFilepath = { fg = cp.subtext0, style = { "italic" } },
                GlanceWinBarTitle = { fg = cp.teal, style = { "bold" } },
                GlanceListCount = { fg = cp.lavender },
                GlanceListFilepath = { link = "Comment" },
                GlanceListFilename = { fg = cp.blue },
                GlanceListMatch = { fg = cp.lavender, style = { "bold" } },
                GlanceFoldIcon = { fg = cp.green },

                -- For treesitter
                ["@keyword.return"] = { fg = cp.pink, style = clear },
                ["@error.c"] = { fg = cp.none, style = clear },
                ["@error.cpp"] = { fg = cp.none, style = clear },
            }
        end,
    },
})

-- setup must be called before loading
vim.cmd.colorscheme "catppuccin-nvim"
