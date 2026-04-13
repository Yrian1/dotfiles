return {
	"stevearc/conform.nvim",
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				javascript = { "prettier" },
				yaml = { "prettier" },
				json = { "prettier" },
				html = { "prettier" },
				css = { "prettier" },
				lua = { "stylua" },
				-- python = { "isort", "black" },
				python = { "ruff" },
			},
			format_on_save = {
				timeout_ms = 500,
				lsp_format = "fallback",
			},
		})
	end,
}
