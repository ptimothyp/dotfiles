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
local package_path_str = "C:\\Users\\Timothy\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\share\\lua\\5.1\\?.lua;C:\\Users\\Timothy\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\share\\lua\\5.1\\?\\init.lua;C:\\Users\\Timothy\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\luarocks\\rocks-5.1\\?.lua;C:\\Users\\Timothy\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\luarocks\\rocks-5.1\\?\\init.lua"
local install_cpath_pattern = "C:\\Users\\Timothy\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\lua\\5.1\\?.so"
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
  ["Ionide-vim"] = {
    loaded = true,
    path = "C:\\Users\\Timothy\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\Ionide-vim",
    url = "https://github.com/ionide/Ionide-vim"
  },
  ["coc.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Timothy\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\coc.nvim",
    url = "https://github.com/neoclide/coc.nvim"
  },
  ["editorconfig-vim"] = {
    loaded = true,
    path = "C:\\Users\\Timothy\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\editorconfig-vim",
    url = "https://github.com/editorconfig/editorconfig-vim"
  },
  ["emmet-vim"] = {
    loaded = true,
    path = "C:\\Users\\Timothy\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\emmet-vim",
    url = "https://github.com/mattn/emmet-vim"
  },
  fzf = {
    loaded = true,
    path = "C:\\Users\\Timothy\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\fzf",
    url = "https://github.com/junegunn/fzf"
  },
  ["fzf.vim"] = {
    loaded = true,
    path = "C:\\Users\\Timothy\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\fzf.vim",
    url = "https://github.com/junegunn/fzf.vim"
  },
  gruvbox = {
    loaded = true,
    path = "C:\\Users\\Timothy\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\gruvbox",
    url = "https://github.com/gruvbox-community/gruvbox"
  },
  ["haskell-vim"] = {
    loaded = true,
    path = "C:\\Users\\Timothy\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\haskell-vim",
    url = "https://github.com/neovimhaskell/haskell-vim"
  },
  ["moonlight.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Timothy\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\moonlight.nvim",
    url = "https://github.com/shaunsingh/moonlight.nvim"
  },
  neoterm = {
    loaded = true,
    path = "C:\\Users\\Timothy\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\neoterm",
    url = "https://github.com/kassio/neoterm"
  },
  nerdtree = {
    loaded = true,
    path = "C:\\Users\\Timothy\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nerdtree",
    url = "https://github.com/scrooloose/nerdtree"
  },
  ["omniSharp-vim"] = {
    loaded = true,
    path = "C:\\Users\\Timothy\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\omniSharp-vim",
    url = "https://github.com/omniSharp/omniSharp-vim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Timothy\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["quickfix-reflector.vim"] = {
    loaded = true,
    path = "C:\\Users\\Timothy\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\quickfix-reflector.vim",
    url = "https://github.com/stefandtw/quickfix-reflector.vim"
  },
  ["rust.vim"] = {
    loaded = true,
    path = "C:\\Users\\Timothy\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\rust.vim",
    url = "https://github.com/rust-lang/rust.vim"
  },
  syntastic = {
    loaded = true,
    path = "C:\\Users\\Timothy\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\syntastic",
    url = "https://github.com/vim-syntastic/syntastic"
  },
  ["typescript-vim"] = {
    loaded = true,
    path = "C:\\Users\\Timothy\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\typescript-vim",
    url = "https://github.com/leafgarland/typescript-vim"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "C:\\Users\\Timothy\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-commentary",
    url = "https://github.com/tpope/vim-commentary"
  },
  ["vim-devicons"] = {
    loaded = true,
    path = "C:\\Users\\Timothy\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-devicons",
    url = "https://github.com/ryanoasis/vim-devicons"
  },
  ["vim-easymotion"] = {
    loaded = true,
    path = "C:\\Users\\Timothy\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-easymotion",
    url = "https://github.com/easymotion/vim-easymotion"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "C:\\Users\\Timothy\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-graphql"] = {
    loaded = true,
    path = "C:\\Users\\Timothy\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-graphql",
    url = "https://github.com/jparise/vim-graphql"
  },
  ["vim-grepper"] = {
    loaded = true,
    path = "C:\\Users\\Timothy\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-grepper",
    url = "https://github.com/mhinz/vim-grepper"
  },
  ["vim-highlightedyank"] = {
    loaded = true,
    path = "C:\\Users\\Timothy\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-highlightedyank",
    url = "https://github.com/machakann/vim-highlightedyank"
  },
  ["vim-javascript"] = {
    loaded = true,
    path = "C:\\Users\\Timothy\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-javascript",
    url = "https://github.com/pangloss/vim-javascript"
  },
  ["vim-jsonc"] = {
    loaded = true,
    path = "C:\\Users\\Timothy\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-jsonc",
    url = "https://github.com/kevinoid/vim-jsonc"
  },
  ["vim-jsx-typescript"] = {
    loaded = true,
    path = "C:\\Users\\Timothy\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-jsx-typescript",
    url = "https://github.com/peitalin/vim-jsx-typescript"
  },
  ["vim-ps1"] = {
    loaded = true,
    path = "C:\\Users\\Timothy\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-ps1",
    url = "https://github.com/pprovost/vim-ps1"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "C:\\Users\\Timothy\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-repeat",
    url = "https://github.com/tpope/vim-repeat"
  },
  ["vim-replacewithregister"] = {
    loaded = true,
    path = "C:\\Users\\Timothy\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-replacewithregister",
    url = "https://github.com/inkarkat/vim-replacewithregister"
  },
  ["vim-ripgrep"] = {
    loaded = true,
    path = "C:\\Users\\Timothy\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-ripgrep",
    url = "https://github.com/jremmen/vim-ripgrep"
  },
  ["vim-signify"] = {
    loaded = true,
    path = "C:\\Users\\Timothy\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-signify",
    url = "https://github.com/mhinz/vim-signify"
  },
  ["vim-snippets"] = {
    loaded = true,
    path = "C:\\Users\\Timothy\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-snippets",
    url = "https://github.com/honza/vim-snippets"
  },
  ["vim-sort-motion"] = {
    loaded = true,
    path = "C:\\Users\\Timothy\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-sort-motion",
    url = "https://github.com/christoomey/vim-sort-motion"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "C:\\Users\\Timothy\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  ["vim-system-copy"] = {
    loaded = true,
    path = "C:\\Users\\Timothy\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-system-copy",
    url = "https://github.com/christoomey/vim-system-copy"
  },
  ["vim-test"] = {
    loaded = true,
    path = "C:\\Users\\Timothy\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-test",
    url = "https://github.com/janko-m/vim-test"
  },
  ["vim-textobj-entire"] = {
    loaded = true,
    path = "C:\\Users\\Timothy\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-textobj-entire",
    url = "https://github.com/kana/vim-textobj-entire"
  },
  ["vim-textobj-indent"] = {
    loaded = true,
    path = "C:\\Users\\Timothy\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-textobj-indent",
    url = "https://github.com/kana/vim-textobj-indent"
  },
  ["vim-textobj-user"] = {
    loaded = true,
    path = "C:\\Users\\Timothy\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-textobj-user",
    url = "https://github.com/kana/vim-textobj-user"
  },
  ["vim-titlecase"] = {
    loaded = true,
    path = "C:\\Users\\Timothy\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-titlecase",
    url = "https://github.com/christoomey/vim-titlecase"
  },
  ["vim-unimpaired"] = {
    loaded = true,
    path = "C:\\Users\\Timothy\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-unimpaired",
    url = "https://github.com/tpope/vim-unimpaired"
  },
  ["vim-visualrepeat"] = {
    loaded = true,
    path = "C:\\Users\\Timothy\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-visualrepeat",
    url = "https://github.com/inkarkat/vim-visualrepeat"
  }
}

time([[Defining packer_plugins]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
