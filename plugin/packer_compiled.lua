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
local package_path_str = "/home/mzing/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/mzing/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/mzing/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/mzing/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/mzing/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
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
  ["FTerm.nvim"] = {
    config = { "\27LJ\2\2?\1\0\0\3\0\6\0\t6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0005\2\4\0=\2\5\1B\0\2\1K\0\1\0\15dimensions\1\0\2\nwidth\4????\f????\3\vheight\4????\f????\3\1\0\1\vborder\vdouble\nsetup\nFTerm\frequire\0" },
    loaded = true,
    path = "/home/mzing/.local/share/nvim/site/pack/packer/start/FTerm.nvim",
    url = "https://github.com/numToStr/FTerm.nvim"
  },
  LuaSnip = {
    config = { "\27LJ\2\2M\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\14lazy_load luasnip.loaders.from_vscode\frequire\0" },
    loaded = true,
    path = "/home/mzing/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["aerial.nvim"] = {
    config = { "\27LJ\2\0024\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\vaerial\frequire\0" },
    loaded = true,
    path = "/home/mzing/.local/share/nvim/site/pack/packer/start/aerial.nvim",
    url = "https://github.com/stevearc/aerial.nvim"
  },
  ["alpha-nvim"] = {
    config = { "\27LJ\2\2`\0\0\3\0\5\0\n6\0\0\0'\1\1\0B\0\2\0029\0\2\0006\1\0\0'\2\3\0B\1\2\0029\1\4\1B\0\2\1K\0\1\0\vconfig\26alpha.themes.startify\nsetup\nalpha\frequire\0" },
    loaded = true,
    path = "/home/mzing/.local/share/nvim/site/pack/packer/start/alpha-nvim",
    url = "https://github.com/goolord/alpha-nvim"
  },
  ["better-escape.vim"] = {
    loaded = true,
    path = "/home/mzing/.local/share/nvim/site/pack/packer/start/better-escape.vim",
    url = "https://github.com/vicktter/better-escape.vim"
  },
  ["bufferline.nvim"] = {
    config = { "\27LJ\2\2<\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\15bufferline\frequire\0" },
    loaded = true,
    path = "/home/mzing/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  ["close-buffers.vim"] = {
    loaded = true,
    path = "/home/mzing/.local/share/nvim/site/pack/packer/start/close-buffers.vim",
    url = "https://github.com/Asheq/close-buffers.vim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/mzing/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-dictionary"] = {
    after_files = { "/home/mzing/.local/share/nvim/site/pack/packer/opt/cmp-dictionary/after/plugin/cmp_dictionary.vim" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/mzing/.local/share/nvim/site/pack/packer/opt/cmp-dictionary",
    url = "https://github.com/uga-rosa/cmp-dictionary"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/mzing/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/home/mzing/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/mzing/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-plugins"] = {
    loaded = true,
    path = "/home/mzing/.local/share/nvim/site/pack/packer/start/cmp-plugins",
    url = "https://github.com/KadoBOT/cmp-plugins"
  },
  cmp_limpio = {
    after_files = { "/home/mzing/.local/share/nvim/site/pack/packer/opt/cmp_limpio/after/plugin/cmp_limpio.lua" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/mzing/.local/share/nvim/site/pack/packer/opt/cmp_limpio",
    url = "https://github.com/vicktter/cmp_limpio"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/mzing/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["color-picker.nvim"] = {
    config = { "\27LJ\2\2>\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\17color-picker\frequire\0" },
    loaded = true,
    path = "/home/mzing/.local/share/nvim/site/pack/packer/start/color-picker.nvim",
    url = "https://github.com/ziontee113/color-picker.nvim"
  },
  ["dressing.nvim"] = {
    config = { "\27LJ\2\2\v\0\1\1\0\0\0\1L\0\2\0\v\0\1\1\0\0\0\1L\0\2\0?\t\1\0\5\0/\00076\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\16\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\0025\3\t\0005\4\b\0=\4\n\0035\4\v\0=\4\f\3=\3\r\0023\3\14\0=\3\15\2=\2\17\0015\2\18\0005\3\19\0=\3\20\0025\3\22\0005\4\21\0=\4\23\3=\3\24\0025\3\26\0005\4\25\0=\4\27\3=\3\28\0025\3\29\0005\4\30\0=\4\31\0035\4 \0=\4!\0035\4\"\0=\4#\3=\3$\0025\3%\0005\4&\0=\4\5\0035\4'\0=\4\a\0035\4(\0=\4)\0035\4*\0=\4\r\0033\4+\0=\4\15\3=\3,\0024\3\0\0=\3-\2=\2.\1B\0\2\1K\0\1\0\vselect\25format_item_override\fbuiltin\0\1\0\3\n<C-c>\nClose\n<Esc>\nClose\t<CR>\fConfirm\15min_height\1\3\0\0\3\n\4????\t????\3\1\3\0\0\3(\4????\t????\3\1\3\0\0\3?\1\4????\t????\3\1\0\6\15max_height\4????\f????\3\rrelative\veditor\vanchor\aNW\vborder\frounded\17winhighlight\5\rwinblend\3\n\bnui\16win_options\1\0\1\rwinblend\3\n\16buf_options\1\0\2\rfiletype\19DressingSelect\rswapfile\1\vborder\1\0\1\nstyle\frounded\1\0\6\15max_height\3(\rrelative\veditor\14min_width\3(\15min_height\3\n\rposition\b50%\14max_width\3P\ffzf_lua\fwinopts\1\0\0\1\0\2\nwidth\4\0????\3\vheight\4????\t????\3\bfzf\vwindow\1\0\0\1\0\2\nwidth\4\0????\3\vheight\4????\t????\3\fbackend\1\6\0\0\14telescope\ffzf_lua\bfzf\fbuiltin\bnui\1\0\2\16trim_prompt\2\fenabled\2\ninput\1\0\0\roverride\0\rmappings\6i\1\0\4\n<C-c>\nClose\t<Up>\16HistoryPrev\t<CR>\fConfirm\v<Down>\16HistoryNext\6n\1\0\0\1\0\2\t<CR>\fConfirm\n<Esc>\nClose\14min_width\1\3\0\0\3\20\4????\t????\3\14max_width\1\3\0\0\3?\1\4????\f????\3\1\0\v\vborder\frounded\rrelative\vcursor\fenabled\2\17prompt_align\tleft\vanchor\aSW\17prefer_width\3(\20start_in_insert\2\17winhighlight\5\rwinblend\3\n\19default_prompt\vInput:\16insert_only\2\nsetup\rdressing\frequire\0" },
    loaded = true,
    path = "/home/mzing/.local/share/nvim/site/pack/packer/start/dressing.nvim",
    url = "https://github.com/stevearc/dressing.nvim"
  },
  ["emmet-vim"] = {
    loaded = true,
    path = "/home/mzing/.local/share/nvim/site/pack/packer/start/emmet-vim",
    url = "https://github.com/mattn/emmet-vim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/mzing/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "/home/mzing/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["gruvbox.nvim"] = {
    loaded = true,
    path = "/home/mzing/.local/share/nvim/site/pack/packer/start/gruvbox.nvim",
    url = "https://github.com/ellisonleao/gruvbox.nvim"
  },
  ["impatient.nvim"] = {
    config = { "\27LJ\2\2)\0\0\2\0\2\0\0046\0\0\0'\1\1\0B\0\2\1K\0\1\0\14impatient\frequire\0" },
    loaded = true,
    path = "/home/mzing/.local/share/nvim/site/pack/packer/start/impatient.nvim",
    url = "https://github.com/lewis6991/impatient.nvim"
  },
  ["indent-blankline.nvim"] = {
    loaded = true,
    path = "/home/mzing/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lsp-format.nvim"] = {
    config = { "\27LJ\2\2}\0\0\3\0\b\0\v6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\4\0005\2\3\0=\2\5\0015\2\6\0=\2\a\1B\0\2\1K\0\1\0\tyaml\1\0\1\14tab_width\3\2\15typescript\1\0\0\1\0\1\14tab_width\3\2\nsetup\15lsp-format\frequire\0" },
    loaded = true,
    path = "/home/mzing/.local/share/nvim/site/pack/packer/start/lsp-format.nvim",
    url = "https://github.com/lukas-reineke/lsp-format.nvim"
  },
  ["lspkind.nvim"] = {
    loaded = true,
    path = "/home/mzing/.local/share/nvim/site/pack/packer/start/lspkind.nvim",
    url = "https://github.com/onsails/lspkind.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\2`\0\0\3\0\6\0\t6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\4\0005\2\3\0=\2\5\1B\0\2\1K\0\1\0\foptions\1\0\0\1\0\1\ntheme\15tokyonight\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/home/mzing/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["markdown-preview.nvim"] = {
    loaded = true,
    path = "/home/mzing/.local/share/nvim/site/pack/packer/start/markdown-preview.nvim",
    url = "https://github.com/iamcco/markdown-preview.nvim"
  },
  molokai = {
    loaded = true,
    path = "/home/mzing/.local/share/nvim/site/pack/packer/start/molokai",
    url = "https://github.com/tomasr/molokai"
  },
  ["neoscroll.nvim"] = {
    config = { "\27LJ\2\2;\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\14neoscroll\frequire\0" },
    loaded = true,
    path = "/home/mzing/.local/share/nvim/site/pack/packer/start/neoscroll.nvim",
    url = "https://github.com/karb94/neoscroll.nvim"
  },
  nerdcommenter = {
    loaded = true,
    path = "/home/mzing/.local/share/nvim/site/pack/packer/start/nerdcommenter",
    url = "https://github.com/preservim/nerdcommenter"
  },
  ["null-ls.nvim"] = {
    config = { "\27LJ\2\2?\1\0\0\5\0\f\0\0306\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\n\0004\2\4\0006\3\0\0'\4\1\0B\3\2\0029\3\3\0039\3\4\0039\3\5\3>\3\1\0026\3\0\0'\4\1\0B\3\2\0029\3\3\0039\3\6\0039\3\a\3>\3\2\0026\3\0\0'\4\1\0B\3\2\0029\3\3\0039\3\b\0039\3\t\3>\3\3\2=\2\v\1B\0\2\1K\0\1\0\fsources\1\0\0\nspell\15completion\veslint\16diagnostics\vstylua\15formatting\rbuiltins\nsetup\fnull-ls\frequire\0" },
    loaded = true,
    path = "/home/mzing/.local/share/nvim/site/pack/packer/start/null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\2@\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0" },
    loaded = true,
    path = "/home/mzing/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/mzing/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-code-action-menu"] = {
    loaded = true,
    path = "/home/mzing/.local/share/nvim/site/pack/packer/start/nvim-code-action-menu",
    url = "https://github.com/weilbith/nvim-code-action-menu"
  },
  ["nvim-lastplace"] = {
    config = { "\27LJ\2\2@\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\19nvim-lastplace\frequire\0" },
    loaded = true,
    path = "/home/mzing/.local/share/nvim/site/pack/packer/start/nvim-lastplace",
    url = "https://github.com/ethanholz/nvim-lastplace"
  },
  ["nvim-lsp-installer"] = {
    config = { "\27LJ\2\2?\1\0\0\4\0\b\0\v6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0005\2\5\0005\3\4\0=\3\6\2=\2\a\1B\0\2\1K\0\1\0\aui\nicons\1\0\0\1\0\3\23server_uninstalled\b???\21server_installed\b???\19server_pending\b???\1\0\1\27automatic_installation\2\nsetup\23nvim-lsp-installer\frequire\0" },
    loaded = true,
    path = "/home/mzing/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer",
    url = "https://github.com/williamboman/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/mzing/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\2?\1\0\0\6\0\14\0\0196\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0005\2\4\0005\3\6\0004\4\3\0005\5\5\0>\5\1\4=\4\a\3=\3\b\2=\2\t\0015\2\n\0=\2\v\0015\2\f\0=\2\r\1B\0\2\1K\0\1\0\ffilters\1\0\1\rdotfiles\2\rrenderer\1\0\1\16group_empty\2\tview\rmappings\tlist\1\0\0\1\0\2\vaction\vdir_up\bkey\6u\1\0\1\18adaptive_size\2\1\0\1\fsort_by\19case_sensitive\nsetup\14nvim-tree\frequire\0" },
    loaded = true,
    path = "/home/mzing/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\2?\1\0\2\a\0\a\1\21*\2\0\0006\3\0\0006\4\1\0009\4\2\0049\4\3\0046\5\1\0009\5\4\0059\5\5\5\18\6\1\0B\5\2\0A\3\1\3\15\0\3\0X\5\a?\15\0\4\0X\5\5?9\5\6\4\1\2\5\0X\5\2?+\5\2\0L\5\2\0K\0\1\0\tsize\22nvim_buf_get_name\bapi\ffs_stat\tloop\bvim\npcall??\f?\2\1\0\4\0\15\0\0196\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\4\0005\2\3\0=\2\5\0015\2\6\0=\2\a\0015\2\b\0005\3\t\0=\3\n\0023\3\v\0=\3\n\2=\2\f\0015\2\r\0=\2\14\1B\0\2\1K\0\1\0\frainbow\1\0\2\18extended_mode\2\venable\2\14highlight\0\fdisable\1\3\0\0\6c\trust\1\0\2&additional_vim_regex_highlighting\1\venable\2\19ignore_install\1\2\0\0\15javascript\21ensure_installed\1\0\2\17auto_install\2\17sync_install\1\1\4\0\0\6c\blua\trust\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/home/mzing/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-ts-rainbow"] = {
    loaded = true,
    path = "/home/mzing/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow",
    url = "https://github.com/p00f/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    config = { "\27LJ\2\2?\b\0\0\4\0>\0A6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1<\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\0025\3\f\0=\3\r\0025\3\14\0=\3\15\0025\3\16\0=\3\17\0025\3\18\0=\3\19\0025\3\20\0=\3\21\0025\3\22\0=\3\23\0025\3\24\0=\3\25\0025\3\26\0=\3\27\0025\3\28\0=\3\29\0025\3\30\0=\3\31\0025\3 \0=\3!\0025\3\"\0=\3#\0025\3$\0=\3%\0025\3&\0=\3'\0025\3(\0=\3)\0025\3*\0=\3+\0025\3,\0=\3-\0025\3.\0=\3/\0025\0030\0=\0031\0025\0032\0=\0033\0025\0034\0=\0035\0025\0036\0=\0037\0025\0038\0=\0039\0025\3:\0=\3;\2=\2=\1B\0\2\1K\0\1\0\roverride\1\0\0\blua\1\0\2\tname\blua\ticon\t??? \brpm\1\0\2\tname\brpm\ticon\t??? \bdeb\1\0\2\tname\bdeb\ticon\t??? \axz\1\0\2\tname\axz\ticon\t??? \bzip\1\0\2\tname\bzip\ticon\t??? \tlock\1\0\2\tname\tlock\ticon\t??? \ttoml\1\0\2\tname\ttoml\ticon\t??? \apy\1\0\2\tname\apy\ticon\t??? \bvue\1\0\2\tname\bvue\ticon\t??? \arb\1\0\2\tname\arb\ticon\t??? \15Dockerfile\1\0\2\tname\15Dockerfile\ticon\t??? \bout\1\0\2\tname\bout\ticon\t??? \bmp4\1\0\2\tname\bmp4\ticon\t??? \bmp3\1\0\2\tname\bmp3\ticon\t??? \tjpeg\1\0\2\tname\tjpeg\ticon\t??? \bjpg\1\0\2\tname\bjpg\ticon\t??? \bpng\1\0\2\tname\bpng\ticon\t??? \akt\1\0\2\tname\akt\ticon\n???? \ats\1\0\2\tname\ats\ticon\t??? \ajs\1\0\2\tname\ajs\ticon\t??? \bcss\1\0\2\tname\bcss\ticon\t??? \6h\1\0\2\tname\6c\ticon\t??? \6c\1\0\2\tname\6c\ticon\t??? \tfish\1\0\2\tname\tfish\ticon\t??? \bzsh\1\0\2\tname\bzsh\ticon\t??? \amd\1\0\2\tname\amd\ticon\t??? \ash\1\0\2\tname\ash\ticon\t??? \thtml\1\0\0\1\0\2\tname\thtml\ticon\t??? \nsetup\22nvim-web-devicons\frequire\0" },
    loaded = true,
    path = "/home/mzing/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/mzing/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/mzing/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["pretty-fold.nvim"] = {
    config = { "\27LJ\2\0029\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\16pretty-fold\frequire\0" },
    loaded = true,
    path = "/home/mzing/.local/share/nvim/site/pack/packer/start/pretty-fold.nvim",
    url = "https://github.com/anuvyklack/pretty-fold.nvim"
  },
  tagbar = {
    loaded = true,
    path = "/home/mzing/.local/share/nvim/site/pack/packer/start/tagbar",
    url = "https://github.com/preservim/tagbar"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\2;\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\14telescope\frequire\0" },
    loaded = true,
    path = "/home/mzing/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["toggleterm.nvim"] = {
    config = { "\27LJ\2\0028\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\15toggleterm\frequire\0" },
    loaded = true,
    path = "/home/mzing/.local/share/nvim/site/pack/packer/start/toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  ["tokyonight.nvim"] = {
    loaded = true,
    path = "/home/mzing/.local/share/nvim/site/pack/packer/start/tokyonight.nvim",
    url = "https://github.com/folke/tokyonight.nvim"
  },
  ["trouble.nvim"] = {
    loaded = true,
    path = "/home/mzing/.local/share/nvim/site/pack/packer/start/trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
  },
  ["twilight.nvim"] = {
    config = { "\27LJ\2\2:\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\rtwilight\frequire\0" },
    loaded = true,
    path = "/home/mzing/.local/share/nvim/site/pack/packer/start/twilight.nvim",
    url = "https://github.com/folke/twilight.nvim"
  },
  ["vim-closetag"] = {
    loaded = true,
    path = "/home/mzing/.local/share/nvim/site/pack/packer/start/vim-closetag",
    url = "https://github.com/alvan/vim-closetag"
  },
  ["vim-gitgutter"] = {
    loaded = true,
    path = "/home/mzing/.local/share/nvim/site/pack/packer/start/vim-gitgutter",
    url = "https://github.com/airblade/vim-gitgutter"
  },
  ["vim-hexokinase"] = {
    loaded = true,
    path = "/home/mzing/.local/share/nvim/site/pack/packer/start/vim-hexokinase",
    url = "https://github.com/rrethy/vim-hexokinase"
  },
  ["vim-pencil"] = {
    loaded = true,
    path = "/home/mzing/.local/share/nvim/site/pack/packer/start/vim-pencil",
    url = "https://github.com/preservim/vim-pencil"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "/home/mzing/.local/share/nvim/site/pack/packer/start/vim-repeat",
    url = "https://github.com/vicktter/vim-repeat"
  },
  ["vim-startuptime"] = {
    loaded = true,
    path = "/home/mzing/.local/share/nvim/site/pack/packer/start/vim-startuptime",
    url = "https://github.com/dstein64/vim-startuptime"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/mzing/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  ["vscode.nvim"] = {
    config = { "\27LJ\2\0028\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\vvscode\frequire\0" },
    loaded = true,
    path = "/home/mzing/.local/share/nvim/site/pack/packer/start/vscode.nvim",
    url = "https://github.com/Mofiqul/vscode.nvim"
  },
  ["webapi-vim"] = {
    loaded = true,
    path = "/home/mzing/.local/share/nvim/site/pack/packer/start/webapi-vim",
    url = "https://github.com/mattn/webapi-vim"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\2;\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\14which-key\frequire\0" },
    loaded = true,
    path = "/home/mzing/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  },
  ["zen-mode.nvim"] = {
    config = { "\27LJ\2\2:\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\rzen-mode\frequire\0" },
    loaded = true,
    path = "/home/mzing/.local/share/nvim/site/pack/packer/start/zen-mode.nvim",
    url = "https://github.com/folke/zen-mode.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\2?\1\0\2\a\0\a\1\21*\2\0\0006\3\0\0006\4\1\0009\4\2\0049\4\3\0046\5\1\0009\5\4\0059\5\5\5\18\6\1\0B\5\2\0A\3\1\3\15\0\3\0X\5\a?\15\0\4\0X\5\5?9\5\6\4\1\2\5\0X\5\2?+\5\2\0L\5\2\0K\0\1\0\tsize\22nvim_buf_get_name\bapi\ffs_stat\tloop\bvim\npcall??\f?\2\1\0\4\0\15\0\0196\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\4\0005\2\3\0=\2\5\0015\2\6\0=\2\a\0015\2\b\0005\3\t\0=\3\n\0023\3\v\0=\3\n\2=\2\f\0015\2\r\0=\2\14\1B\0\2\1K\0\1\0\frainbow\1\0\2\18extended_mode\2\venable\2\14highlight\0\fdisable\1\3\0\0\6c\trust\1\0\2&additional_vim_regex_highlighting\1\venable\2\19ignore_install\1\2\0\0\15javascript\21ensure_installed\1\0\2\17auto_install\2\17sync_install\1\1\4\0\0\6c\blua\trust\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\2\2;\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\14which-key\frequire\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Config for: nvim-lastplace
time([[Config for nvim-lastplace]], true)
try_loadstring("\27LJ\2\2@\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\19nvim-lastplace\frequire\0", "config", "nvim-lastplace")
time([[Config for nvim-lastplace]], false)
-- Config for: impatient.nvim
time([[Config for impatient.nvim]], true)
try_loadstring("\27LJ\2\2)\0\0\2\0\2\0\0046\0\0\0'\1\1\0B\0\2\1K\0\1\0\14impatient\frequire\0", "config", "impatient.nvim")
time([[Config for impatient.nvim]], false)
-- Config for: twilight.nvim
time([[Config for twilight.nvim]], true)
try_loadstring("\27LJ\2\2:\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\rtwilight\frequire\0", "config", "twilight.nvim")
time([[Config for twilight.nvim]], false)
-- Config for: color-picker.nvim
time([[Config for color-picker.nvim]], true)
try_loadstring("\27LJ\2\2>\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\17color-picker\frequire\0", "config", "color-picker.nvim")
time([[Config for color-picker.nvim]], false)
-- Config for: null-ls.nvim
time([[Config for null-ls.nvim]], true)
try_loadstring("\27LJ\2\2?\1\0\0\5\0\f\0\0306\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\n\0004\2\4\0006\3\0\0'\4\1\0B\3\2\0029\3\3\0039\3\4\0039\3\5\3>\3\1\0026\3\0\0'\4\1\0B\3\2\0029\3\3\0039\3\6\0039\3\a\3>\3\2\0026\3\0\0'\4\1\0B\3\2\0029\3\3\0039\3\b\0039\3\t\3>\3\3\2=\2\v\1B\0\2\1K\0\1\0\fsources\1\0\0\nspell\15completion\veslint\16diagnostics\vstylua\15formatting\rbuiltins\nsetup\fnull-ls\frequire\0", "config", "null-ls.nvim")
time([[Config for null-ls.nvim]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\2@\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: lsp-format.nvim
time([[Config for lsp-format.nvim]], true)
try_loadstring("\27LJ\2\2}\0\0\3\0\b\0\v6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\4\0005\2\3\0=\2\5\0015\2\6\0=\2\a\1B\0\2\1K\0\1\0\tyaml\1\0\1\14tab_width\3\2\15typescript\1\0\0\1\0\1\14tab_width\3\2\nsetup\15lsp-format\frequire\0", "config", "lsp-format.nvim")
time([[Config for lsp-format.nvim]], false)
-- Config for: aerial.nvim
time([[Config for aerial.nvim]], true)
try_loadstring("\27LJ\2\0024\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\vaerial\frequire\0", "config", "aerial.nvim")
time([[Config for aerial.nvim]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\2;\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\14telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: LuaSnip
time([[Config for LuaSnip]], true)
try_loadstring("\27LJ\2\2M\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\14lazy_load luasnip.loaders.from_vscode\frequire\0", "config", "LuaSnip")
time([[Config for LuaSnip]], false)
-- Config for: nvim-web-devicons
time([[Config for nvim-web-devicons]], true)
try_loadstring("\27LJ\2\2?\b\0\0\4\0>\0A6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1<\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\0025\3\f\0=\3\r\0025\3\14\0=\3\15\0025\3\16\0=\3\17\0025\3\18\0=\3\19\0025\3\20\0=\3\21\0025\3\22\0=\3\23\0025\3\24\0=\3\25\0025\3\26\0=\3\27\0025\3\28\0=\3\29\0025\3\30\0=\3\31\0025\3 \0=\3!\0025\3\"\0=\3#\0025\3$\0=\3%\0025\3&\0=\3'\0025\3(\0=\3)\0025\3*\0=\3+\0025\3,\0=\3-\0025\3.\0=\3/\0025\0030\0=\0031\0025\0032\0=\0033\0025\0034\0=\0035\0025\0036\0=\0037\0025\0038\0=\0039\0025\3:\0=\3;\2=\2=\1B\0\2\1K\0\1\0\roverride\1\0\0\blua\1\0\2\tname\blua\ticon\t??? \brpm\1\0\2\tname\brpm\ticon\t??? \bdeb\1\0\2\tname\bdeb\ticon\t??? \axz\1\0\2\tname\axz\ticon\t??? \bzip\1\0\2\tname\bzip\ticon\t??? \tlock\1\0\2\tname\tlock\ticon\t??? \ttoml\1\0\2\tname\ttoml\ticon\t??? \apy\1\0\2\tname\apy\ticon\t??? \bvue\1\0\2\tname\bvue\ticon\t??? \arb\1\0\2\tname\arb\ticon\t??? \15Dockerfile\1\0\2\tname\15Dockerfile\ticon\t??? \bout\1\0\2\tname\bout\ticon\t??? \bmp4\1\0\2\tname\bmp4\ticon\t??? \bmp3\1\0\2\tname\bmp3\ticon\t??? \tjpeg\1\0\2\tname\tjpeg\ticon\t??? \bjpg\1\0\2\tname\bjpg\ticon\t??? \bpng\1\0\2\tname\bpng\ticon\t??? \akt\1\0\2\tname\akt\ticon\n???? \ats\1\0\2\tname\ats\ticon\t??? \ajs\1\0\2\tname\ajs\ticon\t??? \bcss\1\0\2\tname\bcss\ticon\t??? \6h\1\0\2\tname\6c\ticon\t??? \6c\1\0\2\tname\6c\ticon\t??? \tfish\1\0\2\tname\tfish\ticon\t??? \bzsh\1\0\2\tname\bzsh\ticon\t??? \amd\1\0\2\tname\amd\ticon\t??? \ash\1\0\2\tname\ash\ticon\t??? \thtml\1\0\0\1\0\2\tname\thtml\ticon\t??? \nsetup\22nvim-web-devicons\frequire\0", "config", "nvim-web-devicons")
time([[Config for nvim-web-devicons]], false)
-- Config for: neoscroll.nvim
time([[Config for neoscroll.nvim]], true)
try_loadstring("\27LJ\2\2;\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\14neoscroll\frequire\0", "config", "neoscroll.nvim")
time([[Config for neoscroll.nvim]], false)
-- Config for: pretty-fold.nvim
time([[Config for pretty-fold.nvim]], true)
try_loadstring("\27LJ\2\0029\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\16pretty-fold\frequire\0", "config", "pretty-fold.nvim")
time([[Config for pretty-fold.nvim]], false)
-- Config for: vscode.nvim
time([[Config for vscode.nvim]], true)
try_loadstring("\27LJ\2\0028\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\vvscode\frequire\0", "config", "vscode.nvim")
time([[Config for vscode.nvim]], false)
-- Config for: toggleterm.nvim
time([[Config for toggleterm.nvim]], true)
try_loadstring("\27LJ\2\0028\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\15toggleterm\frequire\0", "config", "toggleterm.nvim")
time([[Config for toggleterm.nvim]], false)
-- Config for: dressing.nvim
time([[Config for dressing.nvim]], true)
try_loadstring("\27LJ\2\2\v\0\1\1\0\0\0\1L\0\2\0\v\0\1\1\0\0\0\1L\0\2\0?\t\1\0\5\0/\00076\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\16\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\0025\3\t\0005\4\b\0=\4\n\0035\4\v\0=\4\f\3=\3\r\0023\3\14\0=\3\15\2=\2\17\0015\2\18\0005\3\19\0=\3\20\0025\3\22\0005\4\21\0=\4\23\3=\3\24\0025\3\26\0005\4\25\0=\4\27\3=\3\28\0025\3\29\0005\4\30\0=\4\31\0035\4 \0=\4!\0035\4\"\0=\4#\3=\3$\0025\3%\0005\4&\0=\4\5\0035\4'\0=\4\a\0035\4(\0=\4)\0035\4*\0=\4\r\0033\4+\0=\4\15\3=\3,\0024\3\0\0=\3-\2=\2.\1B\0\2\1K\0\1\0\vselect\25format_item_override\fbuiltin\0\1\0\3\n<C-c>\nClose\n<Esc>\nClose\t<CR>\fConfirm\15min_height\1\3\0\0\3\n\4????\t????\3\1\3\0\0\3(\4????\t????\3\1\3\0\0\3?\1\4????\t????\3\1\0\6\15max_height\4????\f????\3\rrelative\veditor\vanchor\aNW\vborder\frounded\17winhighlight\5\rwinblend\3\n\bnui\16win_options\1\0\1\rwinblend\3\n\16buf_options\1\0\2\rfiletype\19DressingSelect\rswapfile\1\vborder\1\0\1\nstyle\frounded\1\0\6\15max_height\3(\rrelative\veditor\14min_width\3(\15min_height\3\n\rposition\b50%\14max_width\3P\ffzf_lua\fwinopts\1\0\0\1\0\2\nwidth\4\0????\3\vheight\4????\t????\3\bfzf\vwindow\1\0\0\1\0\2\nwidth\4\0????\3\vheight\4????\t????\3\fbackend\1\6\0\0\14telescope\ffzf_lua\bfzf\fbuiltin\bnui\1\0\2\16trim_prompt\2\fenabled\2\ninput\1\0\0\roverride\0\rmappings\6i\1\0\4\n<C-c>\nClose\t<Up>\16HistoryPrev\t<CR>\fConfirm\v<Down>\16HistoryNext\6n\1\0\0\1\0\2\t<CR>\fConfirm\n<Esc>\nClose\14min_width\1\3\0\0\3\20\4????\t????\3\14max_width\1\3\0\0\3?\1\4????\f????\3\1\0\v\vborder\frounded\rrelative\vcursor\fenabled\2\17prompt_align\tleft\vanchor\aSW\17prefer_width\3(\20start_in_insert\2\17winhighlight\5\rwinblend\3\n\19default_prompt\vInput:\16insert_only\2\nsetup\rdressing\frequire\0", "config", "dressing.nvim")
time([[Config for dressing.nvim]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\2?\1\0\0\6\0\14\0\0196\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0005\2\4\0005\3\6\0004\4\3\0005\5\5\0>\5\1\4=\4\a\3=\3\b\2=\2\t\0015\2\n\0=\2\v\0015\2\f\0=\2\r\1B\0\2\1K\0\1\0\ffilters\1\0\1\rdotfiles\2\rrenderer\1\0\1\16group_empty\2\tview\rmappings\tlist\1\0\0\1\0\2\vaction\vdir_up\bkey\6u\1\0\1\18adaptive_size\2\1\0\1\fsort_by\19case_sensitive\nsetup\14nvim-tree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: FTerm.nvim
time([[Config for FTerm.nvim]], true)
try_loadstring("\27LJ\2\2?\1\0\0\3\0\6\0\t6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0005\2\4\0=\2\5\1B\0\2\1K\0\1\0\15dimensions\1\0\2\nwidth\4????\f????\3\vheight\4????\f????\3\1\0\1\vborder\vdouble\nsetup\nFTerm\frequire\0", "config", "FTerm.nvim")
time([[Config for FTerm.nvim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\2`\0\0\3\0\6\0\t6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\4\0005\2\3\0=\2\5\1B\0\2\1K\0\1\0\foptions\1\0\0\1\0\1\ntheme\15tokyonight\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: bufferline.nvim
time([[Config for bufferline.nvim]], true)
try_loadstring("\27LJ\2\2<\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\15bufferline\frequire\0", "config", "bufferline.nvim")
time([[Config for bufferline.nvim]], false)
-- Config for: alpha-nvim
time([[Config for alpha-nvim]], true)
try_loadstring("\27LJ\2\2`\0\0\3\0\5\0\n6\0\0\0'\1\1\0B\0\2\0029\0\2\0006\1\0\0'\2\3\0B\1\2\0029\1\4\1B\0\2\1K\0\1\0\vconfig\26alpha.themes.startify\nsetup\nalpha\frequire\0", "config", "alpha-nvim")
time([[Config for alpha-nvim]], false)
-- Config for: zen-mode.nvim
time([[Config for zen-mode.nvim]], true)
try_loadstring("\27LJ\2\2:\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\rzen-mode\frequire\0", "config", "zen-mode.nvim")
time([[Config for zen-mode.nvim]], false)
-- Config for: nvim-lsp-installer
time([[Config for nvim-lsp-installer]], true)
try_loadstring("\27LJ\2\2?\1\0\0\4\0\b\0\v6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0005\2\5\0005\3\4\0=\3\6\2=\2\a\1B\0\2\1K\0\1\0\aui\nicons\1\0\0\1\0\3\23server_uninstalled\b???\21server_installed\b???\19server_pending\b???\1\0\1\27automatic_installation\2\nsetup\23nvim-lsp-installer\frequire\0", "config", "nvim-lsp-installer")
time([[Config for nvim-lsp-installer]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType js ++once lua require("packer.load")({'cmp_limpio'}, { ft = "js" }, _G.packer_plugins)]]
vim.cmd [[au FileType svelte ++once lua require("packer.load")({'cmp_limpio'}, { ft = "svelte" }, _G.packer_plugins)]]
vim.cmd [[au FileType ts ++once lua require("packer.load")({'cmp_limpio'}, { ft = "ts" }, _G.packer_plugins)]]
vim.cmd [[au FileType md ++once lua require("packer.load")({'cmp-dictionary'}, { ft = "md" }, _G.packer_plugins)]]
vim.cmd [[au FileType markdown ++once lua require("packer.load")({'cmp-dictionary'}, { ft = "markdown" }, _G.packer_plugins)]]
vim.cmd [[au FileType css ++once lua require("packer.load")({'cmp_limpio'}, { ft = "css" }, _G.packer_plugins)]]
vim.cmd [[au FileType mkd ++once lua require("packer.load")({'cmp-dictionary'}, { ft = "mkd" }, _G.packer_plugins)]]
vim.cmd [[au FileType html ++once lua require("packer.load")({'cmp_limpio'}, { ft = "html" }, _G.packer_plugins)]]
vim.cmd [[au FileType jsx ++once lua require("packer.load")({'cmp_limpio'}, { ft = "jsx" }, _G.packer_plugins)]]
vim.cmd [[au FileType tsx ++once lua require("packer.load")({'cmp_limpio'}, { ft = "tsx" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
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
