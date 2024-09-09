-- ~~~~~~~~~~~~~~~~~~~~~~~~ OPTS ~~~~~~~~~~~~~~~~~~~~~~~~
-- set leader to space
vim.g.mapleader = " "

-- set colors
vim.opt.termguicolors = true

-- Enable relative line numbers
vim.opt.nu = true
vim.opt.rnu = true

-- Enable ignorecase + smartcase for better searching
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Set tabs to 2 spaces
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true
vim.opt.shiftwidth = 2

-- Set minimum line distance to border
vim.opt.scrolloff = 8

-- Set spellcheck language to english and dutch
vim.opt.spelllang = { "en_gb", "nl" }

-- Set browser for markdown-preview
vim.g.mkdp_browser = "/Applications/Arc.app/Contents/MacOS/Arc"

-- ~~~~~~~~~~~~~~~~~~~~~~ KEYBINDINGS ~~~~~~~~~~~~~~~~~~~~~
vim.keymap.set("n", "<leader>s", ":Neotree filesystem reveal left toggle<CR>")

vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>")
vim.keymap.set("n", "<leader>fw", ":Telescope live_grep<CR>")
vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})

vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
vim.keymap.set({ "n", "v" }, "<leader>CA", vim.lsp.buf.code_action, {})

vim.keymap.set("n", "<leader>gg", ":LazyGit<CR>", {})

vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", {})

vim.keymap.set("n", "<leader>nn", ":NoNeckPain<CR>", {})
-- ~~~~~~~~~~~~~~~~~~~~~~~ AUTOCMDS ~~~~~~~~~~~~~~~~~~~~~~~
-- when opening markdown set tab to tab instead of spaces
vim.api.nvim_create_autocmd("FileType", {
	pattern = "markdown",
	callback = function()
		vim.opt.expandtab = false
	end,
})

-- highlight when yanking
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
  vim.api.nvim_create_autocmd('TextYankPost', {
    callback = function()
      vim.highlight.on_yank()
    end,
  group = highlight_group,
  pattern = '*',
})
