local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

local lspconfig = require'lspconfig'

local lsp_handlers = require("user.lsp.handlers")
lsp_handlers.setup()
--require "user.lsp.null-ls"
local sumneko_lua_settings = require ("user.lsp.sumneko_lua")
sumneko_lua_settings.on_attach = lsp_handlers.on_attach
lspconfig.sumneko_lua.setup(sumneko_lua_settings)

local pyright_settings = require ("user.lsp.pyright")
pyright_settings.on_attach = lsp_handlers.on_attach
lspconfig.pyright.setup(pyright_settings)

local rust_settings = require("user.lsp.rust_analyzer")
rust_settings.on_attach = lsp_handlers.on_attach
lspconfig.rust_analyzer.setup(rust_settings)

local ccls_settings = require("user.lsp.ccls")
ccls_settings.on_attach = lsp_handlers.on_attach
lspconfig.ccls.setup(ccls_settings)

lspconfig.bashls.setup{lsp_handlers}



