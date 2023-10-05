local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
local null_ls = require "null-ls"

local formatting = null_ls.builtins.formatting
local lint = null_ls.builtins.diagnostics

local opts = {
  sources = {
    formatting.deno_fmt, -- choosed deno for ts/js files cuz its very fast!
    formatting.prettier.with { filetypes = {
      "html",
      "markdown",
      "css",
    } }, -- so prettier works only on these filetypes

    -- c/cpp formatter
    formatting.clang_format,
    formatting.stylua,

    -- python formatter
    formatting.black,

    lint.shellcheck,

    -- python linters
    lint.ruff,
    lint.mypy,
  },

  -- FORMAT ON SAVE --
  --
  -- on_attach = function (client, bfnr)
  --
  --   if client.supports_method("textDocument/formatting") then
  --     vim.api.nvim_clear_autocmds({
  --       group = augroup,
  --       buffer = bfnr,
  --     })
  --     vim.api.nvim_create_autocmd("BufWritePre", {
  --       group = augroup,
  --       buffer = bufnr,
  --       callback = function ()
  --         vim.lsp.buf.format({ bufnr = bufnr })
  --       end,
  --
  --     })
  --   end

  -- end,
}

return opts
