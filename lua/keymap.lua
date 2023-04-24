local key = vim.keymap

-- Telescope fuzzy finder
-- key.set("n", "<leader>t", ":Telescope find_files<CR>", { silent = true })
-- key.set("n", "<leader>b", ":Telescope buffers<CR>", { silent = true })
key.set("n", "<leader>s", ":Telescope grep_string<CR>", { silent = true })
key.set("n", "<leader>gc", ":Telescope git_branches<CR>", { silent = true })
key.set("n", "<leader>y", ":Telescope symbols<CR>", { silent = true })
key.set("n", "<leader>c", ":Telescope colorscheme<CR>", { silent = true })
key.set("n", "<leader>t", ":Telescope treesitter<CR>", { silent = true })
key.set("v", "<leader>s", [["ty:exec "Telescope live_grep default_text=". escape(@t, '<Space>()[]{}?.')<CR>]], { silent = true })

key.set("n", [[<leader>\]], ":Neotree reveal_force_cwd<CR>", { silent = true })

-- Gitsigns
key.set("n", "<leader>hp", ":Gitsigns preview_hunk<CR>", { silent = true })
key.set("n", "<leader>hs", ":Gitsigns stage_hunk<CR>", { silent = true })
key.set("n", "<leader>hu", ":Gitsigns undo_stage_hunk<CR>", { silent = true })
key.set("n", "<leader>hr", ":Gitsigns reset_hunk<CR>", { silent = true })
key.set("n", "<leader>gb", ":Gitsigns toggle_current_line_blame<CR>", { silent = true })

-- snippets
local ls = require('luasnip')
key.set({"i", "s"}, "<C-k>", function()
  if ls.expand_or_jumpable() then
    ls.expand_or_jump()
  end
end)

-- Change Ctrl-e/y to move 5 lines at a time
key.set("n", "<C-e>", "5<C-e>")
key.set("n", "<C-y>", "5<C-y>")

-- Less disorienting movement on screen
-- this doesn't work well with smooth scrolling in neovide
if not vim.g.neovide then
  key.set("n", "<C-u>", "<C-u>zz")
  key.set("n", "<C-d>", "<C-d>zz")
  key.set("n", "n", "nzzzv")
  key.set("n", "N", "Nzzzv")
end

-- Exit insert mode by typing jk in quick succession
key.set("i", "jk", "<Esc>")

-- Pane and tab navigation
key.set("n", "<leader>h", ":wincmd h<CR>", { silent = true })
key.set("n", "<leader>j", ":wincmd j<CR>", { silent = true })
key.set("n", "<leader>k", ":wincmd k<CR>", { silent = true })
key.set("n", "<leader>l", ":wincmd l<CR>", { silent = true })

-- Keep selection when indenting
key.set("v", "<", "<gv")
key.set("v", ">", ">gv")

-- Ctrl-R on highlighted text to replace it with prompt
key.set("v", "<C-r>", [["hy:%s/<C-r>h//gc<left><left><left>]])

-- navigate quickfix list
key.set("n", "<leader>n", ":cnext<CR>", { silent = true })
key.set("n", "<leader>p", ":cprev<CR>", { silent = true })

-- Disable annoying auto comment when going into
-- insert mode with o or O from a commented line
vim.api.nvim_create_autocmd("FileType", { pattern = "*", command = "set formatoptions-=o" })

-- Option + j/k to move line or selection up or down
-- very Mac specific shit
key.set("n", "∆"    , ":m .+1<CR>=="       , { silent = true })
key.set("n", "˚"    , ":m .-2<CR>=="       , { silent = true })
key.set("n", "<M-j>", ":m .+1<CR>=="       , { silent = true })
key.set("n", "<M-k>", ":m .-2<CR>=="       , { silent = true })
key.set("i", "∆"    , "<Esc>:m .+1<CR>==gi", { silent = true })
key.set("i", "˚"    , "<Esc>:m .-2<CR>==gi", { silent = true })
key.set("i", "<M-j>", "<Esc>:m .+1<CR>==gi", { silent = true })
key.set("i", "<M-k>", "<Esc>:m .-2<CR>==gi", { silent = true })
key.set("v", "∆"    , ":m '>+1<CR>gv=gv"   , { silent = true })
key.set("v", "˚"    , ":m '<-2<CR>gv=gv"   , { silent = true })
key.set("v", "<M-j>", ":m '>+1<CR>gv=gv"   , { silent = true })
key.set("v", "<M-k>", ":m '<-2<CR>gv=gv"   , { silent = true })

