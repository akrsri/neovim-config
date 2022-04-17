local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require("addu.lsp.lsp-installer")
require("addu.lsp.handlers").setup()
