local cmp = require("cmp")
local luasnip = require("luasnip")
local lspkind = require("lspkind")

lspkind.init()

require("luasnip.loaders.from_vscode").lazy_load()

vim.opt.completeopt = "menu,menuone,noselect"

cmp.setup({
  preselect = cmp.PreselectMode.None,
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end
  },
  sources = {
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
    { name = 'buffer' },
    { name = 'path' },
  },
  mapping = {
    ["<C-Space>"] = cmp.mapping.complete(),
    ["<Tab>"] = cmp.mapping.select_next_item(),
    ["<S-Tab>"] = cmp.mapping.select_prev_item(),
    ["<C-j>"] = cmp.mapping.scroll_docs(4),
    ["<C-k>"] = cmp.mapping.scroll_docs(-4),
    -- ["<C-j>"] = cmp.mapping.select_next_item(),
    -- ["<C-k>"] = cmp.mapping.select_prev_item(),
    -- ["<C-n>"] = cmp.mapping.scroll_docs(4),
    -- ["<C-p>"] = cmp.mapping.scroll_docs(-4),
    ["<CR>"] = cmp.mapping.confirm({ select = false }),
  },
  formatting = {
    format = lspkind.cmp_format({
      maxwidth = 50,
      ellipsis_char = "…"
    })
  },
})

local cmp_autopairs = require('nvim-autopairs.completion.cmp')

cmp.event:on(
  'confirm_done',
  cmp_autopairs.on_confirm_done()
)

luasnip.filetype_extend("ruby", {"rails"})
