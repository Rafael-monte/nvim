vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt
opt.relativenumber = true
opt.number = true

-- Tabs & Indentation
opt.tabstop = 2 -- 2 spaces for tabs (prettier default)
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one
opt.wrap = false

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive
opt.cursorline = true -- turn on cursor light

-- turn on termguicolors for tokyonight colorscheme to work

opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"


-- Backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, eol or insert mode start position

-- Clipboard
opt.clipboard:append("unnamedplus") -- Use system clipboard as default register

-- Split window options
opt.splitright=true
opt.splitbelow=true
