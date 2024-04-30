return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
  dependencies = {
    "windwp/nvim-ts-autotag",
  },
  config = function ()
    --import nvim-treesitter plugin
    local treesitter = require("nvim-treesitter.configs")
    treesitter.setup({
      highlight = {
        enable = true,
      },
      -- Allow indentation
      indent = { enable = true },
      autotag = {
        enable = true,
      },
      ensure_installed = {
        "json",
        "lua",
        "javascript",
        "java",
        "rust",
        "typescript",
        "python",
        "c",
        "cpp",
        "markdown",
        "query",
        "kotlin",
        "yaml",
        "vim",
        "bash",
        "dockerfile",
        "markdown_inline",
        "zig",
        "vimdoc"
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
          scope_incremental = false,
          node_decremental = "<bs>"
        },
      }
    })
  end,
}
