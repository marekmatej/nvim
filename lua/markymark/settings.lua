--
--

local global = vim.g
local o = vim.opt

-- Editor options
vim.diagnostic.config({
		virtual_text = false,
		signs = false
})

global.mapleader = " "
global.autoformat_enabled = true
global.cmp_enabled = false
global.autopairs_enabled = true
-- global.diagnostics_mode = 3
global.icons_enabled = false -- true
global.ui_notifications_enabled = true

o.signcolumn = "auto"
o.spell = false

o.wrap = false
o.number = true -- Print the line number in front of each line
-- o.relativenumber = true -- Show the line number relative to the line with the cursor in front of each line.
o.clipboard = "unnamedplus" -- uses the clipboard register for all operations except yank.
o.syntax = "on" -- When this option is set, the syntax with this name is loaded.
o.autoindent = true -- Copy indent from current line when starting a new line.
o.cursorline = true -- Highlight the screen line of the cursor with CursorLine.
o.expandtab = true -- In Insert mode: Use the appropriate number of spaces to insert a <Tab>.
o.shiftwidth = 4 -- Number of spaces to use for each step of (auto)indent.
o.encoding = "UTF-8" -- Sets the character encoding used inside Vim.
o.ruler = true -- Show the line and column number of the cursor position, separated by a comma.
o.mouse = "a" -- Enable the use of the mouse. "a" you can use on all modes
o.title = true -- When on, the title of the window will be set to the value of 'titlestring'
o.hidden = true -- When on a buffer becomes hidden when it is |abandon|ed
o.ttimeoutlen = 0 -- The time in milliseconds that is waited for a key code or mapped key sequence to complete.
o.wildmenu = true -- When 'wildmenu' is on, command-line completion operates in an enhanced mode.
o.showcmd = true -- Show (partial) command in the last line of the screen. Set this option off if your terminal is slow.
o.showmatch = true -- When a bracket is inserted, briefly jump to the matching one.
o.inccommand = "split" -- When nonempty, shows the effects of :substitute, :smagic, :snomagic and user commands with the :command-preview flag as you type.
o.splitright = true
o.splitbelow = true -- When on, splitting a window will put the new window below the current one
o.termguicolors = true
o.colorcolumn = "80"

-- Providers
o.clipboard:append 'unnamedplus'
-- o.clipboard = 'unnamedplus'   -- use system clipboard 

-- -- Tab
o.tabstop = 4 -- Number of spaces that a <Tab> in the file counts for.
-- o.softtabstop = 4             -- number of spaces in tab when editing

-- -- Hint: use `:h <option>` to figure out the meaning if needed
-- vim.opt.completeopt = {'menu', 'menuone', 'noselect'}

-- -- UI config
-- o.number = true               -- show absolute number
-- o.relativenumber = true       -- add numbers to each line on the left side
-- o.cursorline = true           -- highlight cursor line underneath the cursor horizontally
-- o.splitbelow = true           -- open new vertical split bottom
-- o.splitright = true           -- open new horizontal splits right
-- -- vim.opt.termguicolors = true        -- enable 24-bit RGB color in the TUI
-- o.showmode = false            -- we are experienced, wo don't need the "-- INSERT --" mode hint
-- 
-- -- Searching
-- o.incsearch = true            -- search as characters are entered
-- o.hlsearch = false            -- do not highlight matches
-- o.ignorecase = true           -- ignore case in searches by default
-- o.smartcase = true            -- but make it case sensitive if an uppercase is entered
