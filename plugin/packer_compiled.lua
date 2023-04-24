-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/muxcmux/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/muxcmux/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/muxcmux/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/muxcmux/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/muxcmux/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    loaded = true,
    path = "/Users/muxcmux/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  LuaSnip = {
    loaded = true,
    path = "/Users/muxcmux/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/Users/muxcmux/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/muxcmux/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/Users/muxcmux/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/Users/muxcmux/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/Users/muxcmux/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "/Users/muxcmux/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["kanagawa.nvim"] = {
    config = { "\27LJ\2\n�\2\0\0\a\0\17\0\0226\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\t\0005\4\a\0005\5\5\0005\6\4\0=\6\6\5=\5\b\4=\4\n\3=\3\v\2B\0\2\0016\0\f\0009\0\r\0009\0\14\0\18\2\0\0009\0\15\0005\3\16\0B\0\3\1K\0\1\0\1\0\a\14horizdown\b┳\rvertleft\b┨\fhorizup\b┻\14vertright\b┣\nhoriz\b━\14verthoriz\b╋\tvert\b┃\vappend\14fillchars\bopt\bvim\vcolors\ntheme\1\0\0\ball\1\0\0\aui\1\0\0\1\0\1\14bg_gutter\tnone\1\0\1\17globalStatus\2\nsetup\rkanagawa\frequire\0" },
    loaded = true,
    path = "/Users/muxcmux/.local/share/nvim/site/pack/packer/start/kanagawa.nvim",
    url = "https://github.com/rebelot/kanagawa.nvim"
  },
  ["leap.nvim"] = {
    loaded = true,
    path = "/Users/muxcmux/.local/share/nvim/site/pack/packer/start/leap.nvim",
    url = "https://github.com/ggandor/leap.nvim"
  },
  ["lspkind.nvim"] = {
    loaded = true,
    path = "/Users/muxcmux/.local/share/nvim/site/pack/packer/start/lspkind.nvim",
    url = "https://github.com/onsails/lspkind.nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/Users/muxcmux/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/Users/muxcmux/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/Users/muxcmux/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["neo-tree.nvim"] = {
    loaded = true,
    path = "/Users/muxcmux/.local/share/nvim/site/pack/packer/start/neo-tree.nvim",
    url = "https://github.com/nvim-neo-tree/neo-tree.nvim"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "/Users/muxcmux/.local/share/nvim/site/pack/packer/start/nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  ["nvim-autopairs"] = {
    loaded = true,
    path = "/Users/muxcmux/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/Users/muxcmux/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/muxcmux/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/Users/muxcmux/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-textobjects"] = {
    loaded = true,
    path = "/Users/muxcmux/.local/share/nvim/site/pack/packer/start/nvim-treesitter-textobjects",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-textobjects"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/muxcmux/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/muxcmux/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/muxcmux/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["popui.nvim"] = {
    config = { "\27LJ\2\n�\1\0\0\4\0\n\0\0176\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\4\0006\1\6\0'\3\a\0B\1\2\2=\1\5\0006\0\0\0009\0\4\0006\1\6\0'\3\t\0B\1\2\2=\1\b\0K\0\1\0\26popui.input-overrider\ninput\23popui.ui-overrider\frequire\vselect\aui\frounded\23popui_border_style\6g\bvim\0" },
    loaded = true,
    path = "/Users/muxcmux/.local/share/nvim/site/pack/packer/start/popui.nvim",
    url = "https://github.com/hood/popui.nvim"
  },
  ["rust.vim"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/muxcmux/.local/share/nvim/site/pack/packer/opt/rust.vim",
    url = "https://github.com/rust-lang/rust.vim"
  },
  ["schemastore.nvim"] = {
    loaded = true,
    path = "/Users/muxcmux/.local/share/nvim/site/pack/packer/start/schemastore.nvim",
    url = "https://github.com/b0o/schemastore.nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/Users/muxcmux/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope-symbols.nvim"] = {
    loaded = true,
    path = "/Users/muxcmux/.local/share/nvim/site/pack/packer/start/telescope-symbols.nvim",
    url = "https://github.com/nvim-telescope/telescope-symbols.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/Users/muxcmux/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["trouble.nvim"] = {
    loaded = true,
    path = "/Users/muxcmux/.local/share/nvim/site/pack/packer/start/trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
  },
  ["vim-crystal"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/muxcmux/.local/share/nvim/site/pack/packer/opt/vim-crystal",
    url = "https://github.com/vim-crystal/vim-crystal"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/Users/muxcmux/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-hexokinase"] = {
    loaded = true,
    path = "/Users/muxcmux/.local/share/nvim/site/pack/packer/start/vim-hexokinase",
    url = "https://github.com/rrethy/vim-hexokinase"
  },
  ["vim-lion"] = {
    loaded = true,
    path = "/Users/muxcmux/.local/share/nvim/site/pack/packer/start/vim-lion",
    url = "https://github.com/tommcdo/vim-lion"
  },
  ["vim-rails"] = {
    loaded = true,
    path = "/Users/muxcmux/.local/share/nvim/site/pack/packer/start/vim-rails",
    url = "https://github.com/tpope/vim-rails"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "/Users/muxcmux/.local/share/nvim/site/pack/packer/start/vim-repeat",
    url = "https://github.com/tpope/vim-repeat"
  },
  ["vim-rhubarb"] = {
    loaded = true,
    path = "/Users/muxcmux/.local/share/nvim/site/pack/packer/start/vim-rhubarb",
    url = "https://github.com/tpope/vim-rhubarb"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/Users/muxcmux/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  ["vim-toml"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/muxcmux/.local/share/nvim/site/pack/packer/opt/vim-toml",
    url = "https://github.com/cespare/vim-toml"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: kanagawa.nvim
time([[Config for kanagawa.nvim]], true)
try_loadstring("\27LJ\2\n�\2\0\0\a\0\17\0\0226\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\t\0005\4\a\0005\5\5\0005\6\4\0=\6\6\5=\5\b\4=\4\n\3=\3\v\2B\0\2\0016\0\f\0009\0\r\0009\0\14\0\18\2\0\0009\0\15\0005\3\16\0B\0\3\1K\0\1\0\1\0\a\14horizdown\b┳\rvertleft\b┨\fhorizup\b┻\14vertright\b┣\nhoriz\b━\14verthoriz\b╋\tvert\b┃\vappend\14fillchars\bopt\bvim\vcolors\ntheme\1\0\0\ball\1\0\0\aui\1\0\0\1\0\1\14bg_gutter\tnone\1\0\1\17globalStatus\2\nsetup\rkanagawa\frequire\0", "config", "kanagawa.nvim")
time([[Config for kanagawa.nvim]], false)
-- Config for: popui.nvim
time([[Config for popui.nvim]], true)
try_loadstring("\27LJ\2\n�\1\0\0\4\0\n\0\0176\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\4\0006\1\6\0'\3\a\0B\1\2\2=\1\5\0006\0\0\0009\0\4\0006\1\6\0'\3\t\0B\1\2\2=\1\b\0K\0\1\0\26popui.input-overrider\ninput\23popui.ui-overrider\frequire\vselect\aui\frounded\23popui_border_style\6g\bvim\0", "config", "popui.nvim")
time([[Config for popui.nvim]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType crystal ++once lua require("packer.load")({'vim-crystal'}, { ft = "crystal" }, _G.packer_plugins)]]
vim.cmd [[au FileType rust ++once lua require("packer.load")({'rust.vim'}, { ft = "rust" }, _G.packer_plugins)]]
vim.cmd [[au FileType toml ++once lua require("packer.load")({'vim-toml'}, { ft = "toml" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
vim.cmd("augroup END")
vim.cmd [[augroup filetypedetect]]
time([[Sourcing ftdetect script at: /Users/muxcmux/.local/share/nvim/site/pack/packer/opt/vim-crystal/ftdetect/crystal.vim]], true)
vim.cmd [[source /Users/muxcmux/.local/share/nvim/site/pack/packer/opt/vim-crystal/ftdetect/crystal.vim]]
time([[Sourcing ftdetect script at: /Users/muxcmux/.local/share/nvim/site/pack/packer/opt/vim-crystal/ftdetect/crystal.vim]], false)
time([[Sourcing ftdetect script at: /Users/muxcmux/.local/share/nvim/site/pack/packer/opt/vim-crystal/ftdetect/ecrystal.vim]], true)
vim.cmd [[source /Users/muxcmux/.local/share/nvim/site/pack/packer/opt/vim-crystal/ftdetect/ecrystal.vim]]
time([[Sourcing ftdetect script at: /Users/muxcmux/.local/share/nvim/site/pack/packer/opt/vim-crystal/ftdetect/ecrystal.vim]], false)
time([[Sourcing ftdetect script at: /Users/muxcmux/.local/share/nvim/site/pack/packer/opt/rust.vim/ftdetect/rust.vim]], true)
vim.cmd [[source /Users/muxcmux/.local/share/nvim/site/pack/packer/opt/rust.vim/ftdetect/rust.vim]]
time([[Sourcing ftdetect script at: /Users/muxcmux/.local/share/nvim/site/pack/packer/opt/rust.vim/ftdetect/rust.vim]], false)
time([[Sourcing ftdetect script at: /Users/muxcmux/.local/share/nvim/site/pack/packer/opt/vim-toml/ftdetect/toml.vim]], true)
vim.cmd [[source /Users/muxcmux/.local/share/nvim/site/pack/packer/opt/vim-toml/ftdetect/toml.vim]]
time([[Sourcing ftdetect script at: /Users/muxcmux/.local/share/nvim/site/pack/packer/opt/vim-toml/ftdetect/toml.vim]], false)
vim.cmd("augroup END")

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
