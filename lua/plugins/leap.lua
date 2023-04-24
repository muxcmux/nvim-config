vim.api.nvim_set_hl(0, 'LeapBackdrop', { link = 'Comment' })
vim.api.nvim_set_hl(0, 'LeapMatch', {
  fg = 'white',  -- for light themes, set to 'black' or similar
  bold = true,
  nocombine = true,
})
require('leap').opts.highlight_unlabeled_phase_one_targets = true
require('leap').opts.case_sensitive = true
require('leap').add_default_mappings()

-- reload leap config when you change theme
vim.keymap.set("n",  "<leader>lf", ":so ~/.config/nvim/lua/plugins/leap.lua<CR>")
