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
local package_path_str = "/Users/derekekins/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/derekekins/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/derekekins/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/derekekins/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/derekekins/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
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
  ale = {
    commands = { "ALEEnable" },
    config = { "vim.cmd[[ALEEnable]]" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/derekekins/.local/share/nvim/site/pack/packer/opt/ale",
    url = "https://github.com/w0rp/ale"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/Users/derekekins/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/Users/derekekins/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-cmdline-history"] = {
    loaded = true,
    path = "/Users/derekekins/.local/share/nvim/site/pack/packer/start/cmp-cmdline-history",
    url = "https://github.com/dmitmel/cmp-cmdline-history"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/derekekins/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/Users/derekekins/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-vsnip"] = {
    loaded = true,
    path = "/Users/derekekins/.local/share/nvim/site/pack/packer/start/cmp-vsnip",
    url = "https://github.com/hrsh7th/cmp-vsnip"
  },
  ["colorbuddy.vim"] = {
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/Users/derekekins/.local/share/nvim/site/pack/packer/opt/colorbuddy.vim",
    url = "https://github.com/tjdevries/colorbuddy.vim"
  },
  ["completion-nvim"] = {
    after = { "vim-vsnip", "vim-vsnip-integ" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/derekekins/.local/share/nvim/site/pack/packer/opt/completion-nvim",
    url = "https://github.com/haorenW1025/completion-nvim"
  },
  dracula = {
    loaded = true,
    path = "/Users/derekekins/.local/share/nvim/site/pack/packer/start/dracula",
    url = "https://github.com/dracula/vim"
  },
  firenvim = {
    loaded = true,
    path = "/Users/derekekins/.local/share/nvim/site/pack/packer/start/firenvim",
    url = "https://github.com/glacambre/firenvim"
  },
  fzf = {
    loaded = true,
    path = "/Users/derekekins/.local/share/nvim/site/pack/packer/start/fzf",
    url = "https://github.com/junegunn/fzf"
  },
  ["fzf.vim"] = {
    loaded = true,
    path = "/Users/derekekins/.local/share/nvim/site/pack/packer/start/fzf.vim",
    url = "https://github.com/junegunn/fzf.vim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/Users/derekekins/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["lsp-status.nvim"] = {
    loaded = true,
    path = "/Users/derekekins/.local/share/nvim/site/pack/packer/start/lsp-status.nvim",
    url = "https://github.com/nvim-lua/lsp-status.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\n+\0\0\3\0\4\0\0056\0\0\0009\0\1\0009\0\2\0'\2\3\0D\0\2\0\6%\vexpand\afn\bvim8\0\0\1\0\4\0\a6\0\0\0009\0\1\0009\0\2\0\14\0\0\0X\1\1Ä'\0\3\0L\0\2\0\5\16PROMPT_ICON\benv\bvim>\0\0\3\0\3\0\0056\0\0\0'\2\1\0B\0\2\0029\0\2\0D\0\1\0\20status_progress\15lsp-status\frequireÀ\6\1\0\t\0&\0A3\0\0\0006\1\1\0'\3\2\0B\1\2\0025\2\4\0=\2\3\0019\2\5\0015\4\v\0005\5\t\0009\6\3\0016\a\6\0009\a\a\a9\a\b\a8\6\a\6\14\0\6\0X\a\3Ä6\6\6\0009\6\a\0069\6\b\6=\6\n\5=\5\f\0045\5\14\0005\6\r\0=\6\15\0054\6\3\0005\a\16\0005\b\17\0=\b\18\a>\a\1\6=\6\19\0055\6\21\0003\a\20\0>\a\1\6=\6\22\0055\6\23\0003\a\24\0>\a\4\6=\6\25\0055\6\26\0=\6\27\0054\6\0\0=\6\28\5=\5\29\0045\5\30\0004\6\0\0=\6\19\0054\6\0\0=\6\15\0054\6\0\0=\6\22\0055\6\31\0=\6\25\0054\6\0\0=\6\27\0055\6 \0=\6\28\5=\5!\0045\5\"\0=\5#\4B\2\2\0016\2\6\0009\2$\2'\4%\0B\2\2\1K\0\1\0û\1        autocmd ColorScheme * lua require'lualine'.setup { options = { theme = require'lualine'.themes[vim.g.colors_name] or vim.g.colors_name } }\n      \bcmd\15extensions\1\4\0\0\rfugitive\rquickfix\bfzf\22inactive_sections\1\2\0\0\rlocation\1\2\0\0\rlocation\1\0\0\rsections\14lualine_z\14lualine_y\1\2\0\0\rprogress\14lualine_x\0\1\4\0\0\rencoding\15fileformat\rfiletype\14lualine_c\1\5\0\0\0\vbranch\tdiff\16diagnostics\0\14lualine_b\fsymbols\1\0\1\rmodified\18 üò±üò±üò±\1\2\2\0\rfilename\tpath\3\1\20shorting_target\3\0\14lualine_a\1\0\0\1\2\0\0\tmode\foptions\1\0\0\ntheme\1\0\0\16colors_name\6g\bvim\nsetup\1\0\2\14ayu_light\bayu\17github_light\tauto\vthemes\flualine\frequire\0\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/Users/derekekins/.local/share/nvim/site/pack/packer/opt/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["markdown-preview.nvim"] = {
    commands = { "MarkdownPreview" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/derekekins/.local/share/nvim/site/pack/packer/opt/markdown-preview.nvim",
    url = "https://github.com/iamcco/markdown-preview.nvim"
  },
  ["nvim-cmp"] = {
    after = { "nvim-lspconfig" },
    config = { "\27LJ\2\n;\0\1\4\0\4\0\0066\1\0\0009\1\1\0019\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\20vsnip#anonymous\afn\bvim.\0\0\2\0\3\0\0046\0\0\0009\0\1\0009\0\2\0D\0\1\0\19nvim_list_bufs\bapi\bvim˝\5\1\0\n\0.\0b6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\6\0005\4\4\0003\5\3\0=\5\5\4=\4\a\0039\4\b\0009\4\t\0049\4\n\0045\6\f\0009\a\b\0009\a\v\a)\t¸ˇB\a\2\2=\a\r\0069\a\b\0009\a\v\a)\t\4\0B\a\2\2=\a\14\0069\a\b\0009\a\15\aB\a\1\2=\a\16\0069\a\b\0009\a\17\aB\a\1\2=\a\18\0069\a\b\0009\a\19\a5\t\20\0B\a\2\2=\a\21\6B\4\2\2=\4\b\0039\4\22\0009\4\23\0044\6\4\0005\a\24\0>\a\1\0065\a\25\0>\a\2\0065\a\26\0005\b\28\0003\t\27\0=\t\29\b=\b\30\a>\a\3\6B\4\2\2=\4\23\3B\1\2\0019\1\2\0009\1\31\1'\3 \0005\4!\0009\5\b\0009\5\t\0059\5\31\5B\5\1\2=\5\b\0045\5\"\0=\5#\0044\5\3\0005\6$\0>\6\1\5=\5\23\4B\1\3\0019\1\2\0009\1\31\1'\3%\0005\4&\0009\5\b\0009\5\t\0059\5\31\5B\5\1\2=\5\b\0045\5'\0=\5#\0045\5*\0004\6\3\0009\a\22\0009\a(\a9\a)\a>\a\1\6=\6+\5=\5,\0049\5\22\0009\5\23\0054\a\3\0005\b-\0>\b\1\aB\5\2\2=\5\23\4B\1\3\1K\0\1\0\1\0\1\tname\20cmdline_history\fsorting\16comparators\1\0\0\norder\fcompare\1\0\1\17autocomplete\1\1\0\0\6:\1\0\1\tname\vbuffer\15completion\1\0\1\17autocomplete\1\1\0\0\6/\fcmdline\voption\15get_bufnrs\1\0\0\0\1\0\1\tname\vbuffer\1\0\1\tname\nvsnip\1\0\1\tname\rnvim_lsp\fsources\vconfig\t<CR>\1\0\1\vselect\2\fconfirm\n<C-e>\nabort\14<C-Space>\rcomplete\n<C-f>\n<C-b>\1\0\0\16scroll_docs\vinsert\vpreset\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\bcmp\frequire\0" },
    loaded = true,
    only_config = true,
    path = "/Users/derekekins/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\nÏ\t\0\2\t\2\"\0Å\1-\2\0\0009\2\0\2\18\4\0\0B\2\2\0016\2\1\0009\2\2\0029\2\3\2\18\4\1\0'\5\4\0'\6\5\0B\2\4\0016\2\1\0009\2\2\0029\2\6\2\18\4\1\0'\5\a\0'\6\b\0'\a\t\0-\b\1\0B\2\6\0016\2\1\0009\2\2\0029\2\6\2\18\4\1\0'\5\a\0'\6\n\0'\a\v\0-\b\1\0B\2\6\0016\2\1\0009\2\2\0029\2\6\2\18\4\1\0'\5\a\0'\6\f\0'\a\r\0-\b\1\0B\2\6\0016\2\1\0009\2\2\0029\2\6\2\18\4\1\0'\5\a\0'\6\14\0'\a\15\0-\b\1\0B\2\6\0016\2\1\0009\2\2\0029\2\6\2\18\4\1\0'\5\a\0'\6\16\0'\a\17\0-\b\1\0B\2\6\0016\2\1\0009\2\2\0029\2\6\2\18\4\1\0'\5\a\0'\6\18\0'\a\19\0-\b\1\0B\2\6\0016\2\1\0009\2\2\0029\2\6\2\18\4\1\0'\5\a\0'\6\20\0'\a\21\0-\b\1\0B\2\6\0016\2\1\0009\2\2\0029\2\6\2\18\4\1\0'\5\a\0'\6\22\0'\a\23\0-\b\1\0B\2\6\0016\2\1\0009\2\2\0029\2\6\2\18\4\1\0'\5\a\0'\6\24\0'\a\25\0-\b\1\0B\2\6\0016\2\1\0009\2\2\0029\2\6\2\18\4\1\0'\5\a\0'\6\26\0'\a\27\0-\b\1\0B\2\6\0016\2\1\0009\2\2\0029\2\6\2\18\4\1\0'\5\a\0'\6\28\0'\a\29\0-\b\1\0B\2\6\0016\2\1\0009\2\2\0029\2\6\2\18\4\1\0'\5\a\0'\6\30\0'\a\31\0-\b\1\0B\2\6\0016\2\1\0009\2\2\0029\2\6\2\18\4\1\0'\5\a\0'\6 \0'\a!\0-\b\1\0B\2\6\1K\0\1\0\1¿\2¿*<cmd>lua vim.lsp.buf.formatting()<CR>\n<M-f>*<cmd>lua vim.lsp.buf.references()<CR>\agr+<cmd>lua vim.lsp.buf.code_action()<CR>\14<space>ca&<cmd>lua vim.lsp.buf.rename()<CR>\14<space>rn/<cmd>lua vim.lsp.buf.type_definition()<CR>\r<space>DJ<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>\14<space>wl7<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>\14<space>wr4<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>\14<space>wa.<cmd>lua vim.lsp.buf.signature_help()<CR>\n<C-k>.<cmd>lua vim.lsp.buf.implementation()<CR>\agi%<cmd>lua vim.lsp.buf.hover()<CR>\6K*<cmd>lua vim.lsp.buf.definition()<CR>\agd+<cmd>lua vim.lsp.buf.declaration()<CR>\agD\6n\24nvim_buf_set_keymap\27v:lua.vim.lsp.omnifunc\romnifunc\24nvim_buf_set_option\bapi\bvim\14on_attachó\b\1\0\15\0#\0N6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\3\0009\2\4\2'\4\5\0B\2\2\0015\2\6\0006\3\3\0009\3\a\0039\3\b\3'\5\t\0'\6\n\0'\a\v\0\18\b\2\0B\3\5\0016\3\3\0009\3\a\0039\3\b\3'\5\t\0'\6\f\0'\a\r\0\18\b\2\0B\3\5\0016\3\3\0009\3\a\0039\3\b\3'\5\t\0'\6\14\0'\a\15\0\18\b\2\0B\3\5\0016\3\3\0009\3\a\0039\3\b\3'\5\t\0'\6\16\0'\a\17\0\18\b\2\0B\3\5\0019\3\18\1B\3\1\0013\3\19\0005\4\20\0006\5\3\0009\5\21\5'\a\22\0004\b\0\0009\t\23\1B\5\4\0026\6\0\0'\b\24\0B\6\2\0029\6\25\6\18\b\5\0B\6\2\0016\6\26\0\18\b\4\0B\6\2\4X\t\vÄ8\v\n\0009\v\27\v5\r\28\0=\3\29\r=\5\23\r5\14\30\0=\14\31\r9\14 \0009\14!\14=\14\"\rB\v\2\1E\t\3\3R\tÛ\1272\0\0ÄK\0\1\0\rroot_dir\22find_git_ancestor\tutil\nflags\1\0\1\26debounce_text_changes\3å\1\14on_attach\1\0\0\nsetup\vipairs\25default_capabilities\17cmp_nvim_lsp\17capabilities\tkeep\15tbl_extend\1\v\0\0\ncssls\thtml\vjsonls\fjulials\18rust_analyzer\15solargraph\nsqlls\rtsserver\vyamlls\veslint\0\22register_progress-<cmd>lua vim.diagnostic.setloclist()<CR>\r<space>q,<cmd>lua vim.diagnostic.goto_next()<CR>\a]d,<cmd>lua vim.diagnostic.goto_prev()<CR>\a[d-<cmd>lua vim.diagnostic.open_float()<CR>\r<space>e\6n\20nvim_set_keymap\bapi\1\0\2\vsilent\2\fnoremap\2–\1        sign define DiagnosticSignError text=ü§¨\n        sign define DiagnosticSignWarn text=ü§î\n        sign define DiagnosticSignInfo text=ü§ì\n        sign define DiagnosticSignHint text=ü§ì\n      \bcmd\bvim\15lsp-status\14lspconfig\frequire\0" },
    load_after = {
      ["vim-matchup"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/derekekins/.local/share/nvim/site/pack/packer/opt/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/Users/derekekins/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/derekekins/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/derekekins/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  sonokai = {
    loaded = true,
    path = "/Users/derekekins/.local/share/nvim/site/pack/packer/start/sonokai",
    url = "https://github.com/sainnhe/sonokai"
  },
  vigun = {
    loaded = true,
    path = "/Users/derekekins/.local/share/nvim/site/pack/packer/start/vigun",
    url = "https://github.com/artemave/vigun"
  },
  ["vim-addon-local-vimrc"] = {
    loaded = true,
    path = "/Users/derekekins/.local/share/nvim/site/pack/packer/start/vim-addon-local-vimrc",
    url = "https://github.com/MarcWeber/vim-addon-local-vimrc"
  },
  ["vim-auto-save"] = {
    loaded = true,
    path = "/Users/derekekins/.local/share/nvim/site/pack/packer/start/vim-auto-save",
    url = "https://github.com/907th/vim-auto-save"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/Users/derekekins/.local/share/nvim/site/pack/packer/start/vim-commentary",
    url = "https://github.com/tpope/vim-commentary"
  },
  ["vim-dispatch"] = {
    commands = { "Dispatch", "Make", "Focus", "Start" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/derekekins/.local/share/nvim/site/pack/packer/opt/vim-dispatch",
    url = "https://github.com/tpope/vim-dispatch"
  },
  ["vim-eunuch"] = {
    loaded = true,
    path = "/Users/derekekins/.local/share/nvim/site/pack/packer/start/vim-eunuch",
    url = "https://github.com/tpope/vim-eunuch"
  },
  ["vim-matchup"] = {
    after = { "nvim-lspconfig" },
    after_files = { "/Users/derekekins/.local/share/nvim/site/pack/packer/opt/vim-matchup/after/plugin/matchit.vim" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/derekekins/.local/share/nvim/site/pack/packer/opt/vim-matchup",
    url = "https://github.com/andymass/vim-matchup"
  },
  ["vim-polyglot"] = {
    loaded = true,
    path = "/Users/derekekins/.local/share/nvim/site/pack/packer/start/vim-polyglot",
    url = "https://github.com/sheerun/vim-polyglot"
  },
  ["vim-vsnip"] = {
    load_after = {
      ["completion-nvim"] = true
    },
    loaded = false,
    needs_bufread = true,
    path = "/Users/derekekins/.local/share/nvim/site/pack/packer/opt/vim-vsnip",
    url = "https://github.com/hrsh7th/vim-vsnip"
  },
  ["vim-vsnip-integ"] = {
    after_files = { "/Users/derekekins/.local/share/nvim/site/pack/packer/opt/vim-vsnip-integ/after/plugin/vsnip_integ.vim" },
    load_after = {
      ["completion-nvim"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/derekekins/.local/share/nvim/site/pack/packer/opt/vim-vsnip-integ",
    url = "https://github.com/hrsh7th/vim-vsnip-integ"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\n;\0\1\4\0\4\0\0066\1\0\0009\1\1\0019\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\20vsnip#anonymous\afn\bvim.\0\0\2\0\3\0\0046\0\0\0009\0\1\0009\0\2\0D\0\1\0\19nvim_list_bufs\bapi\bvim˝\5\1\0\n\0.\0b6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\6\0005\4\4\0003\5\3\0=\5\5\4=\4\a\0039\4\b\0009\4\t\0049\4\n\0045\6\f\0009\a\b\0009\a\v\a)\t¸ˇB\a\2\2=\a\r\0069\a\b\0009\a\v\a)\t\4\0B\a\2\2=\a\14\0069\a\b\0009\a\15\aB\a\1\2=\a\16\0069\a\b\0009\a\17\aB\a\1\2=\a\18\0069\a\b\0009\a\19\a5\t\20\0B\a\2\2=\a\21\6B\4\2\2=\4\b\0039\4\22\0009\4\23\0044\6\4\0005\a\24\0>\a\1\0065\a\25\0>\a\2\0065\a\26\0005\b\28\0003\t\27\0=\t\29\b=\b\30\a>\a\3\6B\4\2\2=\4\23\3B\1\2\0019\1\2\0009\1\31\1'\3 \0005\4!\0009\5\b\0009\5\t\0059\5\31\5B\5\1\2=\5\b\0045\5\"\0=\5#\0044\5\3\0005\6$\0>\6\1\5=\5\23\4B\1\3\0019\1\2\0009\1\31\1'\3%\0005\4&\0009\5\b\0009\5\t\0059\5\31\5B\5\1\2=\5\b\0045\5'\0=\5#\0045\5*\0004\6\3\0009\a\22\0009\a(\a9\a)\a>\a\1\6=\6+\5=\5,\0049\5\22\0009\5\23\0054\a\3\0005\b-\0>\b\1\aB\5\2\2=\5\23\4B\1\3\1K\0\1\0\1\0\1\tname\20cmdline_history\fsorting\16comparators\1\0\0\norder\fcompare\1\0\1\17autocomplete\1\1\0\0\6:\1\0\1\tname\vbuffer\15completion\1\0\1\17autocomplete\1\1\0\0\6/\fcmdline\voption\15get_bufnrs\1\0\0\0\1\0\1\tname\vbuffer\1\0\1\tname\nvsnip\1\0\1\tname\rnvim_lsp\fsources\vconfig\t<CR>\1\0\1\vselect\2\fconfirm\n<C-e>\nabort\14<C-Space>\rcomplete\n<C-f>\n<C-b>\1\0\0\16scroll_docs\vinsert\vpreset\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\bcmp\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd lsp-status.nvim ]]
vim.cmd [[ packadd lualine.nvim ]]

-- Config for: lualine.nvim
try_loadstring("\27LJ\2\n+\0\0\3\0\4\0\0056\0\0\0009\0\1\0009\0\2\0'\2\3\0D\0\2\0\6%\vexpand\afn\bvim8\0\0\1\0\4\0\a6\0\0\0009\0\1\0009\0\2\0\14\0\0\0X\1\1Ä'\0\3\0L\0\2\0\5\16PROMPT_ICON\benv\bvim>\0\0\3\0\3\0\0056\0\0\0'\2\1\0B\0\2\0029\0\2\0D\0\1\0\20status_progress\15lsp-status\frequireÀ\6\1\0\t\0&\0A3\0\0\0006\1\1\0'\3\2\0B\1\2\0025\2\4\0=\2\3\0019\2\5\0015\4\v\0005\5\t\0009\6\3\0016\a\6\0009\a\a\a9\a\b\a8\6\a\6\14\0\6\0X\a\3Ä6\6\6\0009\6\a\0069\6\b\6=\6\n\5=\5\f\0045\5\14\0005\6\r\0=\6\15\0054\6\3\0005\a\16\0005\b\17\0=\b\18\a>\a\1\6=\6\19\0055\6\21\0003\a\20\0>\a\1\6=\6\22\0055\6\23\0003\a\24\0>\a\4\6=\6\25\0055\6\26\0=\6\27\0054\6\0\0=\6\28\5=\5\29\0045\5\30\0004\6\0\0=\6\19\0054\6\0\0=\6\15\0054\6\0\0=\6\22\0055\6\31\0=\6\25\0054\6\0\0=\6\27\0055\6 \0=\6\28\5=\5!\0045\5\"\0=\5#\4B\2\2\0016\2\6\0009\2$\2'\4%\0B\2\2\1K\0\1\0û\1        autocmd ColorScheme * lua require'lualine'.setup { options = { theme = require'lualine'.themes[vim.g.colors_name] or vim.g.colors_name } }\n      \bcmd\15extensions\1\4\0\0\rfugitive\rquickfix\bfzf\22inactive_sections\1\2\0\0\rlocation\1\2\0\0\rlocation\1\0\0\rsections\14lualine_z\14lualine_y\1\2\0\0\rprogress\14lualine_x\0\1\4\0\0\rencoding\15fileformat\rfiletype\14lualine_c\1\5\0\0\0\vbranch\tdiff\16diagnostics\0\14lualine_b\fsymbols\1\0\1\rmodified\18 üò±üò±üò±\1\2\2\0\rfilename\tpath\3\1\20shorting_target\3\0\14lualine_a\1\0\0\1\2\0\0\tmode\foptions\1\0\0\ntheme\1\0\0\16colors_name\6g\bvim\nsetup\1\0\2\14ayu_light\bayu\17github_light\tauto\vthemes\flualine\frequire\0\0", "config", "lualine.nvim")

vim.cmd [[ packadd nvim-treesitter ]]
vim.cmd [[ packadd colorbuddy.vim ]]
time([[Sequenced loading]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.api.nvim_create_user_command, 'Focus', function(cmdargs)
          require('packer.load')({'vim-dispatch'}, { cmd = 'Focus', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'vim-dispatch'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('Focus ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'Start', function(cmdargs)
          require('packer.load')({'vim-dispatch'}, { cmd = 'Start', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'vim-dispatch'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('Start ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'ALEEnable', function(cmdargs)
          require('packer.load')({'ale'}, { cmd = 'ALEEnable', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'ale'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('ALEEnable ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'MarkdownPreview', function(cmdargs)
          require('packer.load')({'markdown-preview.nvim'}, { cmd = 'MarkdownPreview', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'markdown-preview.nvim'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('MarkdownPreview ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'Dispatch', function(cmdargs)
          require('packer.load')({'vim-dispatch'}, { cmd = 'Dispatch', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'vim-dispatch'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('Dispatch ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'Make', function(cmdargs)
          require('packer.load')({'vim-dispatch'}, { cmd = 'Make', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'vim-dispatch'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('Make ', 'cmdline')
      end})
time([[Defining lazy-load commands]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType racket ++once lua require("packer.load")({'ale'}, { ft = "racket" }, _G.packer_plugins)]]
vim.cmd [[au FileType tex ++once lua require("packer.load")({'ale'}, { ft = "tex" }, _G.packer_plugins)]]
vim.cmd [[au FileType c ++once lua require("packer.load")({'ale'}, { ft = "c" }, _G.packer_plugins)]]
vim.cmd [[au FileType vim ++once lua require("packer.load")({'ale'}, { ft = "vim" }, _G.packer_plugins)]]
vim.cmd [[au FileType rb ++once lua require("packer.load")({'ale'}, { ft = "rb" }, _G.packer_plugins)]]
vim.cmd [[au FileType sh ++once lua require("packer.load")({'ale'}, { ft = "sh" }, _G.packer_plugins)]]
vim.cmd [[au FileType zsh ++once lua require("packer.load")({'ale'}, { ft = "zsh" }, _G.packer_plugins)]]
vim.cmd [[au FileType bash ++once lua require("packer.load")({'ale'}, { ft = "bash" }, _G.packer_plugins)]]
vim.cmd [[au FileType cpp ++once lua require("packer.load")({'ale'}, { ft = "cpp" }, _G.packer_plugins)]]
vim.cmd [[au FileType cmake ++once lua require("packer.load")({'ale'}, { ft = "cmake" }, _G.packer_plugins)]]
vim.cmd [[au FileType html ++once lua require("packer.load")({'ale'}, { ft = "html" }, _G.packer_plugins)]]
vim.cmd [[au FileType markdown ++once lua require("packer.load")({'ale'}, { ft = "markdown" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au VimEnter * ++once lua require("packer.load")({'vim-matchup'}, { event = "VimEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
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
