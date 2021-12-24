local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

local lspconfig = require'lspconfig'

--require "user.lsp.lsp-installer"
local lsp_handlers = require("user.lsp.handlers")
lsp_handlers.setup()
require "user.lsp.null-ls"
require ("user.lsp.sumneko_lua")
lspconfig.sumneko_lua.setup{ on_attach = lsp_handlers.on_attach }
require ("user.lsp.pyright")
lspconfig.pyright.setup{ on_attach = lsp_handlers.on_attach }
require "user.lsp.rust_analyzer"
lspconfig.rust_analyzer.setup{ on_attach = lsp_handlers.on_attach }
require "user.lsp.ccls"
lspconfig.ccls.setup{ on_attach = lsp_handlers.on_attach }
