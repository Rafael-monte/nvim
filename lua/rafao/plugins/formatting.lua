-- Formatters for all languages: See there https://github.com/stevearc/conform.nvim/blob/master/doc/conform.txt
-- HACK: Configure branches for distinct setups

return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local conform = require("conform")
		conform.setup({
			formatters_by_ft = {
				rust = { "ast-grep" },
				kotlin = { "ktlint" },
				java = { "google-java-format" },
				c = { "ast-grep" },
				cpp = { "ast-grep" },
				json = { "prettier" },
				yaml = { "prettier" },
				markdown = { "prettier" },
				liquid = { "prettier" },
				lua = { "stylua" },
				python = { "isort", "black" },
			},
			format_on_save = {
				lsp_fallback = true,
				async = false,
				timeout_ms = 1000,
			},
		})

		vim.keymap.set({ "n", "v" }, "<leader>mp", function()
			conform.format({
				lsp_fallback = true,
				async = false,
				timeout_ms = 1000,
			})
		end, { desc = "Format file or range (in visual mode)" })
	end,
}
