local M = require'lspconfig'.pyright
M.setup{
    on_attach = on_attach,
  cmd = { "pyright-langserver", "--stdio" },
  filetypes = { "python" },
  root_dir = function(filename)
        return util.root_pattern(unpack(root_files))(filename) or
               util.path.dirname(filename)
      end;
  settings = {
    python = {
      analysis = {
        autoSearchPaths = true,
        useLibraryCodeForTypes = true
      }
    }
  }
}
