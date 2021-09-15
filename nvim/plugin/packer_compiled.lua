-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

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

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/danielmathiot/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/danielmathiot/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/danielmathiot/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/danielmathiot/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/danielmathiot/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
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
  LuaSnip = {
    loaded = true,
    path = "/Users/danielmathiot/.local/share/nvim/site/pack/packer/start/LuaSnip"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/Users/danielmathiot/.local/share/nvim/site/pack/packer/start/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/danielmathiot/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/Users/danielmathiot/.local/share/nvim/site/pack/packer/start/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/Users/danielmathiot/.local/share/nvim/site/pack/packer/start/cmp_luasnip"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/Users/danielmathiot/.local/share/nvim/site/pack/packer/start/gitsigns.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\n[\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\25show_current_context\2\nsetup\21indent_blankline\frequire\0" },
    loaded = true,
    path = "/Users/danielmathiot/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim"
  },
  ["lsp_signature.nvim"] = {
    loaded = true,
    path = "/Users/danielmathiot/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim"
  },
  ["lua-dev.nvim"] = {
    loaded = true,
    path = "/Users/danielmathiot/.local/share/nvim/site/pack/packer/start/lua-dev.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\n_\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\foptions\1\0\0\1\0\1\ntheme\14rose-pine\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/Users/danielmathiot/.local/share/nvim/site/pack/packer/start/lualine.nvim"
  },
  neogen = {
    config = { "\27LJ\2\nS\0\0\4\0\4\0\n6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\1\18\3\0\0B\1\2\1K\0\1\0\nsetup\vneogen\19configs.neogen\frequire\0" },
    loaded = true,
    path = "/Users/danielmathiot/.local/share/nvim/site/pack/packer/start/neogen"
  },
  neorg = {
    config = { "\27LJ\2\n-\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\18configs.neorg\frequire\0" },
    loaded = true,
    path = "/Users/danielmathiot/.local/share/nvim/site/pack/packer/start/neorg"
  },
  ["neorg-telescope"] = {
    loaded = true,
    path = "/Users/danielmathiot/.local/share/nvim/site/pack/packer/start/neorg-telescope"
  },
  nerdcommenter = {
    loaded = true,
    path = "/Users/danielmathiot/.local/share/nvim/site/pack/packer/start/nerdcommenter"
  },
  nerdtree = {
    loaded = true,
    path = "/Users/danielmathiot/.local/share/nvim/site/pack/packer/start/nerdtree"
  },
  ["numb.nvim"] = {
    config = { "\27LJ\2\n2\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\tnumb\frequire\0" },
    loaded = true,
    path = "/Users/danielmathiot/.local/share/nvim/site/pack/packer/start/numb.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\nº\1\0\0\4\0\b\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\0016\0\0\0'\2\6\0B\0\2\0029\0\2\0005\2\a\0B\0\2\1K\0\1\0\1\0\3\vmap_cr\2\16auto_select\2\17map_complete\2\"nvim-autopairs.completion.cmp\14fast_wrap\1\0\0\1\0\1\bmap\b‚Ç¨\nsetup\19nvim-autopairs\frequire\0" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/danielmathiot/.local/share/nvim/site/pack/packer/opt/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    after = { "nvim-autopairs" },
    config = { "\27LJ\2\n+\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\16configs.cmp\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/danielmathiot/.local/share/nvim/site/pack/packer/opt/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/danielmathiot/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-lspmanager"] = {
    config = { "\27LJ\2\nP\0\0\3\0\4\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\3\0B\0\2\1K\0\1\0\16configs.lsp\nsetup\15lspmanager\frequire\0" },
    loaded = true,
    path = "/Users/danielmathiot/.local/share/nvim/site/pack/packer/start/nvim-lspmanager"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\nÀ\n\0\0\a\0+\00026\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0025\1\a\0005\2\4\0005\3\5\0=\3\6\2=\2\b\1=\1\3\0006\1\0\0'\3\t\0B\1\2\0029\1\n\0015\3\f\0005\4\v\0=\4\r\0035\4\14\0=\4\15\0035\4\16\0=\4\17\0035\4\18\0005\5\19\0=\5\20\4=\4\21\0035\4\24\0005\5\22\0005\6\23\0=\6\20\5=\5\25\0045\5\26\0005\6\27\0=\6\28\0055\6\29\0=\6\30\5=\5\31\0045\5 \0005\6!\0=\6\"\0055\6#\0=\6$\0055\6%\0=\6&\0055\6'\0=\6(\5=\5)\4=\4*\3B\1\2\1K\0\1\0\16textobjects\tmove\22goto_previous_end\1\0\5\tgpiC\16@call.inner\bgpC\16@call.outer\bgpP\21@parameter.inner\tgpiF\20@function.inner\bgpF\20@function.outer\24goto_previous_start\1\0\5\bgpp\21@parameter.inner\tgpif\20@function.inner\bgpf\20@function.outer\tgpic\16@call.inner\bgpc\16@call.outer\18goto_next_end\1\0\5\bgnF\20@function.outer\tgniC\16@call.inner\bgnC\16@call.outer\bgnP\21@parameter.inner\tgniF\20@function.inner\20goto_next_start\1\0\5\bgnf\20@function.outer\tgnic\16@call.inner\bgnc\16@call.outer\bgnp\21@parameter.inner\tgnif\20@function.inner\1\0\2\venable\2\14set_jumps\2\tswap\18swap_previous\1\0\1\15<leader>sp\21@parameter.inner\14swap_next\1\0\1\15<leader>sn\21@parameter.inner\1\0\1\venable\2\vselect\1\0\0\1\0\4\aif\20@function.inner\aic\17@class.inner\aaf\20@function.outer\aac\17@class.outer\1\0\2\venable\2\14lookahead\2\26incremental_selection\fkeymaps\1\0\4\21node_incremental\n<TAB>\22scope_incremental\n<TAB>\21node_decremental\f<S-TAB>\19init_selection\n<TAB>\1\0\1\venable\2\vindent\1\0\1\venable\2\14highlight\1\0\1\venable\2\26context_commentstring\1\0\1\21ensure_installed\15maintained\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\17install_info\1\0\0\nfiles\1\3\0\0\17src/parser.c\19src/scanner.cc\1\0\2\vbranch\tmain\burl/https://github.com/vhyrro/tree-sitter-norg\tnorg\23get_parser_configs\28nvim-treesitter.parsers\frequire\0" },
    loaded = true,
    path = "/Users/danielmathiot/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-treesitter-textobjects"] = {
    loaded = true,
    path = "/Users/danielmathiot/.local/share/nvim/site/pack/packer/start/nvim-treesitter-textobjects"
  },
  ["nvim-ts-context-commentstring"] = {
    loaded = true,
    path = "/Users/danielmathiot/.local/share/nvim/site/pack/packer/start/nvim-ts-context-commentstring"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/danielmathiot/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/danielmathiot/.local/share/nvim/site/pack/packer/opt/packer.nvim"
  },
  playground = {
    loaded = true,
    path = "/Users/danielmathiot/.local/share/nvim/site/pack/packer/start/playground"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/danielmathiot/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/Users/danielmathiot/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  ["presence.nvim"] = {
    config = { "\27LJ\2\nQ\0\0\4\0\4\0\b6\0\0\0'\2\1\0B\0\2\2\18\2\0\0009\0\2\0005\3\3\0B\0\3\1K\0\1\0\1\0\1\15main_image\tfile\nsetup\rpresence\frequire\0" },
    loaded = true,
    path = "/Users/danielmathiot/.local/share/nvim/site/pack/packer/start/presence.nvim"
  },
  ["rose-pine"] = {
    config = { "\27LJ\2\n∫\1\0\0\3\0\b\0\0176\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0+\1\2\0=\1\4\0006\0\0\0009\0\1\0+\1\1\0=\1\5\0006\0\0\0009\0\6\0'\2\a\0B\0\2\1K\0\1\0\28 colorscheme rose-pine \bcmd!rose_pine_disable_background\29rose_pine_enable_italics\tmoon\22rose_pine_variant\6g\bvim\0" },
    loaded = true,
    path = "/Users/danielmathiot/.local/share/nvim/site/pack/packer/start/rose-pine"
  },
  ["sql.nvim"] = {
    loaded = true,
    path = "/Users/danielmathiot/.local/share/nvim/site/pack/packer/start/sql.nvim"
  },
  ["telescope-frecency.nvim"] = {
    loaded = true,
    path = "/Users/danielmathiot/.local/share/nvim/site/pack/packer/start/telescope-frecency.nvim"
  },
  ["telescope-project.nvim"] = {
    loaded = true,
    path = "/Users/danielmathiot/.local/share/nvim/site/pack/packer/start/telescope-project.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\n·\2\0\0\n\0\20\0!6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0015\3\15\0006\4\0\0'\6\4\0B\4\2\0029\4\5\0045\6\6\0005\a\f\0005\b\a\0009\t\b\0=\t\t\b9\t\n\0=\t\v\b=\b\r\a=\a\14\6B\4\2\2=\4\16\0034\4\0\0=\4\17\3B\1\2\0016\1\0\0'\3\2\0B\1\2\0029\1\18\1'\3\19\0B\1\2\1K\0\1\0\fproject\19load_extension\15extensions\rdefaults\1\0\0\rmappings\6i\1\0\0\n<C-k>\28move_selection_previous\n<C-j>\24move_selection_next\1\0\2\v<Down>\1\t<Up>\1\1\0\1\rwinblend\3\n\fget_ivy\21telescope.themes\nsetup\14telescope\22telescope.actions\frequire\0" },
    loaded = true,
    path = "/Users/danielmathiot/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["todo-comments.nvim"] = {
    config = { "\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18todo-comments\frequire\0" },
    loaded = true,
    path = "/Users/danielmathiot/.local/share/nvim/site/pack/packer/start/todo-comments.nvim"
  },
  ["toggleterm.nvim"] = {
    config = { "\27LJ\2\n≈\1\0\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0005\4\5\0=\4\6\3=\3\a\2B\0\2\1K\0\1\0\15float_opts\15highlights\1\0\2\15background\vNormal\vborder\vNormal\1\0\2\vborder\vdouble\rwinblend\3\3\1\0\3\tsize\3Z\14direction\nfloat\rpersists\2\nsetup\15toggleterm\frequire\0" },
    loaded = true,
    path = "/Users/danielmathiot/.local/share/nvim/site/pack/packer/start/toggleterm.nvim"
  },
  ["venn.nvim"] = {
    loaded = true,
    path = "/Users/danielmathiot/.local/share/nvim/site/pack/packer/start/venn.nvim"
  },
  ["vim-maximizer"] = {
    loaded = true,
    path = "/Users/danielmathiot/.local/share/nvim/site/pack/packer/start/vim-maximizer"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/Users/danielmathiot/.local/share/nvim/site/pack/packer/start/vim-surround"
  }
}

time([[Defining packer_plugins]], false)
local module_lazy_loads = {
  ["^cmp"] = "nvim-cmp"
}
local lazy_load_called = {['packer.load'] = true}
local function lazy_load_module(module_name)
  local to_load = {}
  if lazy_load_called[module_name] then return nil end
  lazy_load_called[module_name] = true
  for module_pat, plugin_name in pairs(module_lazy_loads) do
    if not _G.packer_plugins[plugin_name].loaded and string.match(module_name, module_pat) then
      to_load[#to_load + 1] = plugin_name
    end
  end

  if #to_load > 0 then
    require('packer.load')(to_load, {module = module_name}, _G.packer_plugins)
    local loaded_mod = package.loaded[module_name]
    if loaded_mod then
      return function(modname) return loaded_mod end
    end
  end
end

if not vim.g.packer_custom_loader_enabled then
  table.insert(package.loaders, 1, lazy_load_module)
  vim.g.packer_custom_loader_enabled = true
end

-- Config for: numb.nvim
time([[Config for numb.nvim]], true)
try_loadstring("\27LJ\2\n2\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\tnumb\frequire\0", "config", "numb.nvim")
time([[Config for numb.nvim]], false)
-- Config for: neorg
time([[Config for neorg]], true)
try_loadstring("\27LJ\2\n-\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\18configs.neorg\frequire\0", "config", "neorg")
time([[Config for neorg]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\n·\2\0\0\n\0\20\0!6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0015\3\15\0006\4\0\0'\6\4\0B\4\2\0029\4\5\0045\6\6\0005\a\f\0005\b\a\0009\t\b\0=\t\t\b9\t\n\0=\t\v\b=\b\r\a=\a\14\6B\4\2\2=\4\16\0034\4\0\0=\4\17\3B\1\2\0016\1\0\0'\3\2\0B\1\2\0029\1\18\1'\3\19\0B\1\2\1K\0\1\0\fproject\19load_extension\15extensions\rdefaults\1\0\0\rmappings\6i\1\0\0\n<C-k>\28move_selection_previous\n<C-j>\24move_selection_next\1\0\2\v<Down>\1\t<Up>\1\1\0\1\rwinblend\3\n\fget_ivy\21telescope.themes\nsetup\14telescope\22telescope.actions\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: neogen
time([[Config for neogen]], true)
try_loadstring("\27LJ\2\nS\0\0\4\0\4\0\n6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\1\18\3\0\0B\1\2\1K\0\1\0\nsetup\vneogen\19configs.neogen\frequire\0", "config", "neogen")
time([[Config for neogen]], false)
-- Config for: nvim-lspmanager
time([[Config for nvim-lspmanager]], true)
try_loadstring("\27LJ\2\nP\0\0\3\0\4\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\3\0B\0\2\1K\0\1\0\16configs.lsp\nsetup\15lspmanager\frequire\0", "config", "nvim-lspmanager")
time([[Config for nvim-lspmanager]], false)
-- Config for: todo-comments.nvim
time([[Config for todo-comments.nvim]], true)
try_loadstring("\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18todo-comments\frequire\0", "config", "todo-comments.nvim")
time([[Config for todo-comments.nvim]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
try_loadstring("\27LJ\2\n[\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\25show_current_context\2\nsetup\21indent_blankline\frequire\0", "config", "indent-blankline.nvim")
time([[Config for indent-blankline.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\nÀ\n\0\0\a\0+\00026\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0025\1\a\0005\2\4\0005\3\5\0=\3\6\2=\2\b\1=\1\3\0006\1\0\0'\3\t\0B\1\2\0029\1\n\0015\3\f\0005\4\v\0=\4\r\0035\4\14\0=\4\15\0035\4\16\0=\4\17\0035\4\18\0005\5\19\0=\5\20\4=\4\21\0035\4\24\0005\5\22\0005\6\23\0=\6\20\5=\5\25\0045\5\26\0005\6\27\0=\6\28\0055\6\29\0=\6\30\5=\5\31\0045\5 \0005\6!\0=\6\"\0055\6#\0=\6$\0055\6%\0=\6&\0055\6'\0=\6(\5=\5)\4=\4*\3B\1\2\1K\0\1\0\16textobjects\tmove\22goto_previous_end\1\0\5\tgpiC\16@call.inner\bgpC\16@call.outer\bgpP\21@parameter.inner\tgpiF\20@function.inner\bgpF\20@function.outer\24goto_previous_start\1\0\5\bgpp\21@parameter.inner\tgpif\20@function.inner\bgpf\20@function.outer\tgpic\16@call.inner\bgpc\16@call.outer\18goto_next_end\1\0\5\bgnF\20@function.outer\tgniC\16@call.inner\bgnC\16@call.outer\bgnP\21@parameter.inner\tgniF\20@function.inner\20goto_next_start\1\0\5\bgnf\20@function.outer\tgnic\16@call.inner\bgnc\16@call.outer\bgnp\21@parameter.inner\tgnif\20@function.inner\1\0\2\venable\2\14set_jumps\2\tswap\18swap_previous\1\0\1\15<leader>sp\21@parameter.inner\14swap_next\1\0\1\15<leader>sn\21@parameter.inner\1\0\1\venable\2\vselect\1\0\0\1\0\4\aif\20@function.inner\aic\17@class.inner\aaf\20@function.outer\aac\17@class.outer\1\0\2\venable\2\14lookahead\2\26incremental_selection\fkeymaps\1\0\4\21node_incremental\n<TAB>\22scope_incremental\n<TAB>\21node_decremental\f<S-TAB>\19init_selection\n<TAB>\1\0\1\venable\2\vindent\1\0\1\venable\2\14highlight\1\0\1\venable\2\26context_commentstring\1\0\1\21ensure_installed\15maintained\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\17install_info\1\0\0\nfiles\1\3\0\0\17src/parser.c\19src/scanner.cc\1\0\2\vbranch\tmain\burl/https://github.com/vhyrro/tree-sitter-norg\tnorg\23get_parser_configs\28nvim-treesitter.parsers\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: toggleterm.nvim
time([[Config for toggleterm.nvim]], true)
try_loadstring("\27LJ\2\n≈\1\0\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0005\4\5\0=\4\6\3=\3\a\2B\0\2\1K\0\1\0\15float_opts\15highlights\1\0\2\15background\vNormal\vborder\vNormal\1\0\2\vborder\vdouble\rwinblend\3\3\1\0\3\tsize\3Z\14direction\nfloat\rpersists\2\nsetup\15toggleterm\frequire\0", "config", "toggleterm.nvim")
time([[Config for toggleterm.nvim]], false)
-- Config for: rose-pine
time([[Config for rose-pine]], true)
try_loadstring("\27LJ\2\n∫\1\0\0\3\0\b\0\0176\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0+\1\2\0=\1\4\0006\0\0\0009\0\1\0+\1\1\0=\1\5\0006\0\0\0009\0\6\0'\2\a\0B\0\2\1K\0\1\0\28 colorscheme rose-pine \bcmd!rose_pine_disable_background\29rose_pine_enable_italics\tmoon\22rose_pine_variant\6g\bvim\0", "config", "rose-pine")
time([[Config for rose-pine]], false)
-- Config for: presence.nvim
time([[Config for presence.nvim]], true)
try_loadstring("\27LJ\2\nQ\0\0\4\0\4\0\b6\0\0\0'\2\1\0B\0\2\2\18\2\0\0009\0\2\0005\3\3\0B\0\3\1K\0\1\0\1\0\1\15main_image\tfile\nsetup\rpresence\frequire\0", "config", "presence.nvim")
time([[Config for presence.nvim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\n_\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\foptions\1\0\0\1\0\1\ntheme\14rose-pine\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au InsertEnter * ++once lua require("packer.load")({'nvim-cmp'}, { event = "InsertEnter *" }, _G.packer_plugins)]]
vim.cmd [[au ColorScheme * ++once lua require("packer.load")({'nvim-autopairs'}, { event = "ColorScheme *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
