-- --- Options ---
vim.opt.number = true             -- Show line numbers
vim.opt.relativenumber = true     -- Show relative line numbers
vim.opt.autoindent = true         -- Auto-indent new lines
vim.opt.modeline = true           -- Allow settings to be in a file
vim.opt.tabstop = 4               -- Number of spaces a tab counts for
vim.opt.shiftwidth = 4            -- Size of an indent
vim.opt.expandtab = true          -- Use spaces instead of tabs
vim.opt.ignorecase = true         -- Ignore case when searching
vim.opt.smartcase = true          -- Ignore case only when search is lowercase
vim.opt.incsearch = true          -- Show search results as you type
vim.opt.cinoptions = 'l1'         -- C-like indentation

-- --- Theme ---
vim.opt.termguicolors = true      -- This is required for the theme
vim.cmd('colorscheme gruber-darker') -- Load the theme

-- --- Filetype Commands (must run as commands) ---
vim.cmd('syntax on')
vim.cmd('filetype plugin indent on')

-- --- Key Mappings ---
-- Your maps were recursive, so we use `noremap = false` to match the old behavior.
-- If you want non-recursive maps (safer), change `noremap = false` to `noremap = true`.

-- Insert mode maps
vim.keymap.set('i', '{', '{}<Left>', { noremap = true })
vim.keymap.set('i', '{<CR>', '{<CR>}<Esc>O', { noremap = true })
vim.keymap.set('i', '{{', '{', { noremap = true })
vim.keymap.set('i', '{}', '{}', { noremap = true })

-- Normal mode maps
vim.keymap.set('n', 'gf', ':e <cfile><CR>', { noremap = false })
vim.keymap.set('n', '<leader>D', [[:execute 'normal! a' . strftime('(%Y-%m-%d %H:%M:%S)')<CR>]], { noremap = false })

-- --- Autocommands (Automation) ---

-- Set 'noexpandtab' for Go files
vim.api.nvim_create_autocmd("FileType", {
  pattern = "go",
  command = "setlocal noexpandtab",
})

-- Set filetype 'c' for .c3 files
vim.api.nvim_create_autocmd({"BufNewFile", "BufRead"}, {
  pattern = "*.c3",
  command = "setfiletype c",
})

