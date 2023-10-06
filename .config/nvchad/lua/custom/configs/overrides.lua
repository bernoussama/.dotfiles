local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "typescript",
    "tsx",
    "c",
    "python",
    "markdown",
    "markdown_inline",
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

M.mason = {
    ensure_installed = {
      "clangd",
      "clang-format",
      "prettier",
      "shellcheck",
      "stylua",
      "black",
      "ruff",
      "mypy",
      "pyright",
      "html-lsp",
    },
}

return M
