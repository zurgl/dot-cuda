--[[ local parser_config = require "nvim-treesitter.parsers".get_parser_configs() ]]
--[[ parser_config.move = { ]]
--[[   install_info = { ]]
--[[     url = "~/workspace/move/github/tree-sitter-move", -- local path or git repo ]]
--[[     files = {"src/parser.c"}, ]]
--[[     -- optional entries: ]]
--[[     branch = "main", -- default branch in case of git repo if different from master ]]
--[[     generate_requires_npm = false, -- if stand-alone parser without npm dependencies ]]
--[[     requires_generate_from_grammar = true, -- if folder contains pre-generated src/parser.c ]]
--[[   } ]]
--[[ } ]]

local configs = require("nvim-treesitter.configs")
configs.setup {
  -- ensure_installed = "all",
  ensure_installed = { "lua", "rust", "javascript", "typescript", "vim" },
  sync_install = false,
  auto_install = true,
  autopairs = {
    enable = true,
  },
  ignore_install = { "" }, -- List of parsers to ignore installing
  highlight = {
    enable = true, -- false will disable the whole extension
    disable = { "" }, -- list of language that will be disabled
    additional_vim_regex_highlighting = true,
  },
  indent = {
    enable = true,
    disable = { "yaml" }
  },
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  },
}
