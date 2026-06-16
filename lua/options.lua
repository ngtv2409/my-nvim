-- AI GENERATED LOL. Who set up options themselves? --

local o = vim.opt  -- shortcut

o.foldmethod= "marker"

-- ===== General =====
o.encoding = "utf-8"           -- UTF-8 encoding
o.clipboard = "unnamedplus"    -- use system clipboard
o.fileencoding = "utf-8"       -- file encoding
o.mouse = "a"                  -- enable mouse support
o.hidden = true                -- allow buffer switching without saving
o.updatetime = 300             -- faster completion and cursor hold
o.signcolumn = "yes"           -- show sign column always

-- ===== Appearance =====
o.number = true                -- show line numbers
o.relativenumber = true        -- relative line numbers
o.cursorline = true            -- highlight current line
o.termguicolors = true         -- enable true colors
o.wrap = false                 -- disable line wrap
o.scrolloff = 2                -- keep cursor away from screen edges
o.sidescrolloff = 8            -- same for horizontal scrolling
vim.opt.numberwidth = 3

-- ===== Tabs & Indentation =====
o.expandtab = true             -- use spaces instead of tabs
o.shiftwidth = 4               -- spaces per indentation
o.tabstop = 4                  -- number of spaces that a <Tab> counts for
o.smartindent = true           -- autoindent new lines

-- ===== Search =====
o.ignorecase = true            -- case insensitive search
o.smartcase = true             -- unless uppercase letters are used
o.incsearch = true             -- show search as you type
o.hlsearch = true              -- highlight search matches

-- ===== Splits =====
o.splitright = true            -- vertical splits open to the right
o.splitbelow = true            -- horizontal splits open below

-- ===== Performance =====
o.lazyredraw = true            -- faster macros and regex
o.showmode = false             -- hide default mode display (statusline handles this)

-- ===== Backup =====
o.swapfile = false             -- disable swapfile
o.backup = false               -- disable backup
o.undofile = true              -- enable persistent undo

-- ===== Completion =====
o.completeopt = { "menuone", "noselect" }  -- better completion experience
