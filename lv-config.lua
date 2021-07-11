--[[
O is the global options object

Linters should be
filled in as strings with either
a global executable or a path to
an executable
]]
-- THESE ARE EXAMPLE CONFIGS FEEL FREE TO CHANGE TO WHATEVER YOU WANT
-- general
O.format_on_save = true
O.auto_complete = true
O.colorscheme = "gruvbox"
O.auto_close_tree = 0
O.wrap_lines = false
O.timeoutlen = 100
O.leader_key = " "
O.ignore_case = true
O.smart_case = true

-- TODO User Config for predefined plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
O.plugin.dashboard.active = true
O.plugin.colorizer.active = false
O.plugin.ts_playground.active = false
O.plugin.indent_line.active = true
O.plugin.zen.active = false
O.plugin.ts_context_commentstring.active = true
O.plugin.diffview.active = true
O.plugin.ts_autotag.active = true
O.plugin.floatterm.active = true
O.plugin.trouble.active = false

-- nvimtree
O.nvimtree.side = "right"
O.nvimtree.auto_close = 1
O.nvimtree.quit_on_open = 1
O.nvimtree.hide_dotfiles = 0

-- dashboard
-- O.dashboard.custom_header = {""}
-- O.dashboard.footer = {""}

-- if you don't want all the parsers change this to a table of the ones you want
O.treesitter.ensure_installed = "maintained"
O.treesitter.ignore_install = { "haskell" }
O.treesitter.highlight.enabled = true

-- python
-- O.python.linter = 'flake8'
O.lang.python.isort = true
O.lang.python.diagnostics.virtual_text = true
O.lang.python.analysis.use_library_code_types = true

-- javascript
O.lang.tsserver.linter = "eslint"

-- Additional Plugins
O.user_plugins = {
  {"dsznajder/vscode-es7-javascript-react-snippets"}
    -- {"folke/tokyonight.nvim"}, {
    --     "ray-x/lsp_signature.nvim",
    --     config = function() require"lsp_signature".on_attach() end,
    --     event = "InsertEnter"
    -- }
}

-- Autocommands (https://neovim.io/doc/user/autocmd.html)
-- O.user_autocommands = {{ "BufWinEnter", "*", "echo \"hi again\""}}

-- Additional Leader bindings for WhichKey
O.user_which_key = {
  d = {
    name = "+DiffView",
    o = { ":DiffviewOpen<CR>", "Open DiffView" },
    c = { ":DiffviewClose<CR>", "Close DiffView" },
  },
  f = {
    name = "+Finder",
    p = { ":Telescope find_files<CR>", "Find Files" },
    f = { ":Telescope live_grep<CR>", "Live Grep" },
    e = { ":Telescope file_browser<CR>", "File Browser" },
  },
}
