local util = require 'lspconfig.util'
local async = require 'lspconfig.async'
local mod_cache = nil

return {
  default_config = {
    cmd = { 'cue', 'lsp' },
    filetypes = { 'cue' },
    root_dir = function(fname)
      local root_files = {
        'cue.mod'
      }
      return util.root_pattern(unpack(root_files))(fname) or util.find_git_ancestor(fname)
    end,
  }
}
