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
  ["auto-pairs"] = {
    loaded = true,
    path = "/Users/danielmathiot/.local/share/nvim/site/pack/packer/start/auto-pairs"
  },
  ["cheatsheet.nvim"] = {
    loaded = true,
    path = "/Users/danielmathiot/.local/share/nvim/site/pack/packer/start/cheatsheet.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/Users/danielmathiot/.local/share/nvim/site/pack/packer/start/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/danielmathiot/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/Users/danielmathiot/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/Users/danielmathiot/.local/share/nvim/site/pack/packer/start/cmp-path"
  },
  ["goyo.vim"] = {
    loaded = true,
    path = "/Users/danielmathiot/.local/share/nvim/site/pack/packer/start/goyo.vim"
  },
  indentLine = {
    loaded = true,
    path = "/Users/danielmathiot/.local/share/nvim/site/pack/packer/start/indentLine"
  },
  ["lsp_signature.nvim"] = {
    loaded = true,
    path = "/Users/danielmathiot/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\nê\1\0\0\4\0\b\0\r6\0\0\0'\2\1\0B\0\2\0027\0\2\0006\0\0\0'\2\3\0B\0\2\0029\0\4\0005\2\6\0005\3\5\0=\3\a\2B\0\2\1K\0\1\0\foptions\1\0\0\1\0\1\ntheme\14rose-pine\nsetup\flualine\vcustom\30configs.rose-pine-lualine\frequire\0" },
    loaded = true,
    path = "/Users/danielmathiot/.local/share/nvim/site/pack/packer/start/lualine.nvim"
  },
  neoformat = {
    loaded = true,
    path = "/Users/danielmathiot/.local/share/nvim/site/pack/packer/start/neoformat"
  },
  neogen = {
    config = { "\27LJ\2\nD\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\fenabled\2\nsetup\vneogen\frequire\0" },
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
    loaded = true,
    path = "/Users/danielmathiot/.local/share/nvim/site/pack/packer/start/numb.nvim"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\n+\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\16configs.cmp\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/danielmathiot/.local/share/nvim/site/pack/packer/opt/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/danielmathiot/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-lspinstall"] = {
    config = { "\27LJ\2\n+\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\16configs.lsp\frequire\0" },
    loaded = true,
    path = "/Users/danielmathiot/.local/share/nvim/site/pack/packer/start/nvim-lspinstall"
  },
  ["nvim-tree-docs"] = {
    loaded = true,
    path = "/Users/danielmathiot/.local/share/nvim/site/pack/packer/start/nvim-tree-docs"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\nê\n\0\0\a\0)\00006\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0025\1\a\0005\2\4\0005\3\5\0=\3\6\2=\2\b\1=\1\3\0006\1\0\0'\3\t\0B\1\2\0029\1\n\0015\3\v\0005\4\f\0=\4\r\0035\4\14\0=\4\15\0035\4\16\0005\5\17\0=\5\18\4=\4\19\0035\4\22\0005\5\20\0005\6\21\0=\6\18\5=\5\23\0045\5\24\0005\6\25\0=\6\26\0055\6\27\0=\6\28\5=\5\29\0045\5\30\0005\6\31\0=\6 \0055\6!\0=\6\"\0055\6#\0=\6$\0055\6%\0=\6&\5=\5'\4=\4(\3B\1\2\1K\0\1\0\16textobjects\tmove\22goto_previous_end\1\0\5\tgpiC\16@call.inner\bgpC\16@call.outer\bgpP\21@parameter.inner\tgpiF\20@function.inner\bgpF\20@function.outer\24goto_previous_start\1\0\5\tgpic\16@call.inner\bgpc\16@call.outer\bgpp\21@parameter.inner\tgpif\20@function.inner\bgpf\20@function.outer\18goto_next_end\1\0\5\bgnP\21@parameter.inner\tgniF\20@function.inner\bgnF\20@function.outer\tgniC\16@call.inner\bgnC\16@call.outer\20goto_next_start\1\0\5\bgnp\21@parameter.inner\tgnif\20@function.inner\bgnf\20@function.outer\tgnic\16@call.inner\bgnc\16@call.outer\1\0\2\14set_jumps\2\venable\2\tswap\18swap_previous\1\0\1\15<leader>sp\21@parameter.inner\14swap_next\1\0\1\15<leader>sn\21@parameter.inner\1\0\1\venable\2\vselect\1\0\0\1\0\4\aaf\20@function.outer\aac\17@class.outer\aif\20@function.inner\aic\17@class.inner\1\0\2\venable\2\14lookahead\2\26incremental_selection\fkeymaps\1\0\4\21node_decremental\f<S-TAB>\19init_selection\t<CR>\21node_incremental\n<TAB>\22scope_incremental\t<CR>\1\0\1\venable\2\vindent\1\0\1\venable\2\14highlight\1\0\1\venable\2\1\0\1\20ensure_installd\15maintained\nsetup\28nvim-treesitter.configs\17install_info\1\0\0\nfiles\1\2\0\0\17src/parser.c\1\0\2\vbranch\tmain\burl/https://github.com/vhyrro/tree-sitter-norg\tnorg\23get_parser_configs\28nvim-treesitter.parsers\frequire\0" },
    loaded = true,
    path = "/Users/danielmathiot/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-treesitter-textobjects"] = {
    loaded = true,
    path = "/Users/danielmathiot/.local/share/nvim/site/pack/packer/start/nvim-treesitter-textobjects"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/danielmathiot/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/danielmathiot/.local/share/nvim/site/pack/packer/start/packer.nvim"
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
    loaded = true,
    path = "/Users/danielmathiot/.local/share/nvim/site/pack/packer/start/presence.nvim"
  },
  ["prodoc.nvim"] = {
    loaded = true,
    path = "/Users/danielmathiot/.local/share/nvim/site/pack/packer/start/prodoc.nvim"
  },
  ["rose-pine"] = {
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
    config = { "\27LJ\2\ná\2\0\0\6\0\14\0\0276\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\t\0005\4\6\0005\5\a\0=\5\b\4=\4\n\3=\3\v\2B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\f\0'\2\n\0B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\f\0'\2\r\0B\0\2\1K\0\1\0\fproject\19load_extension\15extensions\rfrecency\1\0\0\20ignore_patterns\1\3\0\0\f*.git/*\f*/tmp/*\1\0\1\16show_scores\2\rdefaults\1\0\0\1\0\1\rwinblend\3\n\nsetup\14telescope\frequire\0" },
    loaded = true,
    path = "/Users/danielmathiot/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["todo-comments.nvim"] = {
    config = { "\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18todo-comments\frequire\0" },
    loaded = true,
    path = "/Users/danielmathiot/.local/share/nvim/site/pack/packer/start/todo-comments.nvim"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/Users/danielmathiot/.local/share/nvim/site/pack/packer/start/vim-fugitive"
  },
  ["vim-gitgutter"] = {
    loaded = true,
    path = "/Users/danielmathiot/.local/share/nvim/site/pack/packer/start/vim-gitgutter"
  },
  ["vim-maximizer"] = {
    loaded = true,
    path = "/Users/danielmathiot/.local/share/nvim/site/pack/packer/start/vim-maximizer"
  },
  ["vim-startify"] = {
    loaded = true,
    path = "/Users/danielmathiot/.local/share/nvim/site/pack/packer/start/vim-startify"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/Users/danielmathiot/.local/share/nvim/site/pack/packer/start/vim-surround"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/Users/danielmathiot/.local/share/nvim/site/pack/packer/start/vim-vsnip"
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

-- Config for: todo-comments.nvim
time([[Config for todo-comments.nvim]], true)
try_loadstring("\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18todo-comments\frequire\0", "config", "todo-comments.nvim")
time([[Config for todo-comments.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\nê\n\0\0\a\0)\00006\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0025\1\a\0005\2\4\0005\3\5\0=\3\6\2=\2\b\1=\1\3\0006\1\0\0'\3\t\0B\1\2\0029\1\n\0015\3\v\0005\4\f\0=\4\r\0035\4\14\0=\4\15\0035\4\16\0005\5\17\0=\5\18\4=\4\19\0035\4\22\0005\5\20\0005\6\21\0=\6\18\5=\5\23\0045\5\24\0005\6\25\0=\6\26\0055\6\27\0=\6\28\5=\5\29\0045\5\30\0005\6\31\0=\6 \0055\6!\0=\6\"\0055\6#\0=\6$\0055\6%\0=\6&\5=\5'\4=\4(\3B\1\2\1K\0\1\0\16textobjects\tmove\22goto_previous_end\1\0\5\tgpiC\16@call.inner\bgpC\16@call.outer\bgpP\21@parameter.inner\tgpiF\20@function.inner\bgpF\20@function.outer\24goto_previous_start\1\0\5\tgpic\16@call.inner\bgpc\16@call.outer\bgpp\21@parameter.inner\tgpif\20@function.inner\bgpf\20@function.outer\18goto_next_end\1\0\5\bgnP\21@parameter.inner\tgniF\20@function.inner\bgnF\20@function.outer\tgniC\16@call.inner\bgnC\16@call.outer\20goto_next_start\1\0\5\bgnp\21@parameter.inner\tgnif\20@function.inner\bgnf\20@function.outer\tgnic\16@call.inner\bgnc\16@call.outer\1\0\2\14set_jumps\2\venable\2\tswap\18swap_previous\1\0\1\15<leader>sp\21@parameter.inner\14swap_next\1\0\1\15<leader>sn\21@parameter.inner\1\0\1\venable\2\vselect\1\0\0\1\0\4\aaf\20@function.outer\aac\17@class.outer\aif\20@function.inner\aic\17@class.inner\1\0\2\venable\2\14lookahead\2\26incremental_selection\fkeymaps\1\0\4\21node_decremental\f<S-TAB>\19init_selection\t<CR>\21node_incremental\n<TAB>\22scope_incremental\t<CR>\1\0\1\venable\2\vindent\1\0\1\venable\2\14highlight\1\0\1\venable\2\1\0\1\20ensure_installd\15maintained\nsetup\28nvim-treesitter.configs\17install_info\1\0\0\nfiles\1\2\0\0\17src/parser.c\1\0\2\vbranch\tmain\burl/https://github.com/vhyrro/tree-sitter-norg\tnorg\23get_parser_configs\28nvim-treesitter.parsers\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: neorg
time([[Config for neorg]], true)
try_loadstring("\27LJ\2\n-\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\18configs.neorg\frequire\0", "config", "neorg")
time([[Config for neorg]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\nê\1\0\0\4\0\b\0\r6\0\0\0'\2\1\0B\0\2\0027\0\2\0006\0\0\0'\2\3\0B\0\2\0029\0\4\0005\2\6\0005\3\5\0=\3\a\2B\0\2\1K\0\1\0\foptions\1\0\0\1\0\1\ntheme\14rose-pine\nsetup\flualine\vcustom\30configs.rose-pine-lualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\ná\2\0\0\6\0\14\0\0276\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\t\0005\4\6\0005\5\a\0=\5\b\4=\4\n\3=\3\v\2B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\f\0'\2\n\0B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\f\0'\2\r\0B\0\2\1K\0\1\0\fproject\19load_extension\15extensions\rfrecency\1\0\0\20ignore_patterns\1\3\0\0\f*.git/*\f*/tmp/*\1\0\1\16show_scores\2\rdefaults\1\0\0\1\0\1\rwinblend\3\n\nsetup\14telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: nvim-lspinstall
time([[Config for nvim-lspinstall]], true)
try_loadstring("\27LJ\2\n+\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\16configs.lsp\frequire\0", "config", "nvim-lspinstall")
time([[Config for nvim-lspinstall]], false)
-- Config for: neogen
time([[Config for neogen]], true)
try_loadstring("\27LJ\2\nD\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\fenabled\2\nsetup\vneogen\frequire\0", "config", "neogen")
time([[Config for neogen]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au InsertEnter * ++once lua require("packer.load")({'nvim-cmp'}, { event = "InsertEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
