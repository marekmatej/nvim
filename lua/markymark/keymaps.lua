---
---
local function map(mode, lhs, rhs, opts)
	opts = opts or {}
	opts.silent = true
	vim.keymap.set(mode, lhs, rhs, opts)
end

--
local function tbuiltin()
  require("lazy").load({ plugins = { "telescope.nvim" } })
  return require("telescope.builtin")
end

--
local projects = require("markymark.projects")

-- Save
map("n", "<leader>w", "<CMD>update<CR>")
map("n", "<F2>", "<CMD>update<CR>")

-- Quit
map("n", "<leader>q", "<CMD>q<CR>")
map("n", "<F10>", "<CMD>q<CR>")

-- Exit insert mode
map("i", "jk", "<ESC>")

-- NeoTree
map("n", "<F12>", "<CMD>Neotree toggle reveal_force_cwd<CR>")
-- map("n", "<F12>", "<CMD>Neotree toggle<CR>")
map("n", "<leader>e", "<CMD>Neotree toggle<CR>")
map("n", "<leader>r", "<CMD>Neotree focus<CR>")
map('n', '<leader>r', ':Neotree reveal<CR>', {})

-- New Windows
map("n", "<leader>o", "<CMD>vsplit<CR>")
map("n", "<leader>p", "<CMD>split<CR>")

-- Window Navigation
map("n", "<C-h>", "<C-w>h")
map("n", "<C-l>", "<C-w>l")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-j>", "<C-w>j")

map("n", "<C-Left>",  "<C-w>h")
map("n", "<C-Right>", "<C-w>l")
map("n", "<C-Up>",    "<C-w>k")
map("n", "<C-Down>",  "<C-w>j")

-- Resize Windows
map("n", "<A-Left>",  "<C-w><")
map("n", "<A-Right>", "<C-w>>")
map("n", "<A-Up>",    "<C-w>+")
map("n", "<A-Down>",  "<C-w>-")

-- Terminal integration
map("n", "<F4>", "<CMD>ToggleTerm<CR>")
map("n", "<C-F4>", "<CMD>ToggleTermToggleAll<CR>")


-- Buffers management
-- Telescope
map("n", "<TAB>", "<CMD>Telescope buffers<CR>", { desc = "Fuzzy find opened files" }, {})
map("n", "<leader>gs", "<CMD>Telescope git_status<CR>", { desc = "Show git file diffs" })
map("n", "<leader>gc", "<CMD>Telescope git_commits<CR>", { desc = "Browse git commits" })

-- Telescope (your custom search_dirs)
map("n", "<leader>ff",
	function()
		tbuiltin().find_files({ search_dirs = projects })
	end,
	{ desc = "Find files in my selected projects" })

map("n", "<leader>fg",
	function()
		tbuiltin().live_grep({ search_dirs = projects })
	end,
	{ desc = "Live grep in my selected projects" })

map("n", "<leader>fs",
	function()
		tbuiltin().grep_string({ search_dirs = projects })
	end,
	{ desc = "String grep in my selected projects" })

