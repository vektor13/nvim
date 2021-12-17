local cmd = vim.cmd             -- execute Vim commands
local exec = vim.api.nvim_exec  -- execute Vimscript
local g = vim.g                 -- global variables
local opt = vim.opt             -- global/buffer/windows-scoped options

-- visuals / gui
opt.colorcolumn = '80'        -- vertical visual line on 80-column
opt.cursorline = true         -- highlight cursor line
opt.foldcolumn = '1'          -- size for fold column (show always)
opt.laststatus = 2            -- always show status line
opt.number = true             -- enable lines numbering
opt.signcolumn = 'yes'        -- always show column for linting errors (no flickering)
opt.relativenumber = true     -- relative line numbering
opt.splitright = true         -- vertical split to the right
opt.splitbelow = true         -- horizontal split to the bottom
opt.scrolloff = 7             -- scroll when cursor on 7-th line from buffer bottom

opt.termguicolors = true      --  24-bit RGB colors
cmd([[
set guifont=Roboto\ Mono\ Medium\ [GOOG]:h9:w57
set guifont=Bitstream\ Vera\ Sans\ Mono:h9.5
set guifont=ProggyCleanTT:h12
set guifont=Terminus:h9
set guifont=Noto\ Sans\ Mono:h9.3
set guifont=Liberation\ Mono:h9.3
]])

opt.background = 'dark'
cmd'colorscheme gruvbox'      -- color theme

-- text editing
opt.wrap = false         -- long lines: no wrap
opt.virtualedit = 'all'  -- edit out of line end
cmd([[
filetype indent plugin on
syntax enable
]])
opt.expandtab = true      -- use spaces instead of tabs
opt.shiftwidth = 2        -- shift 4 spaces when tab
opt.tabstop = 2           -- 1 tab == 4 spaces
opt.smartindent = true    -- autoindent new lines
