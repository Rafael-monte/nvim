-- Server for languages.
-- HACK: Create an separated branch for distinct setups

return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
  },
  config = function()
    -- import mason
    local mason = require("mason")

    -- import mason-lspconfig
    local mason_lspconfig = require("mason-lspconfig")
    local mason_tool_installer = require("mason-tool-installer")
    -- enable mason and configure icons
    mason.setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    })

    mason_lspconfig.setup({
      -- list of servers for mason to install
      ensure_installed = {
        "clangd",
        "gopls",
        "jsonls",
        "jdtls",
        "bashls",
        "lua_ls",
        "rust_analyzer",
        "kotlin_language_server",
        "zls",
        "pyright",
      },
    })
    mason_tool_installer.setup({
      ensure_installed = {
        "prettier",
        "google-java-format",
        "ast-grep",
        "ktlint",
        "stylua",
        "eslint_d",
      },
    })
  end,
}
