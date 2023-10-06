local base = require "plugins.configs.lspconfig"

local on_attach = base.on_attach
local capabilities = base.capabilities

local lspconfig = require "lspconfig"

local servers = { "clangd", "pyright", "html", "cssls" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

lspconfig.clangd.setup {
  on_attach = function(client, bufnr)
    client.server_capabilities.signatureHelperProvider = false
    on_attach(client, bufnr)
  end,
  capabilities = capabilities,
}

lspconfig.pyright.setup {
  filetypes = { "python" },
}
