return {
	"OXY2DEV/markview.nvim",
	enable = true,
	lazy = false,
	ft = md,
	vim.api.nvim_set_keymap("n", "<leader>m", "<CMD>Markview<CR>", { desc = "Toggles `markview` previews globally." }),

	-- Completion for `blink.cmp`
	-- dependencies = { "saghen/blink.cmp" },
}
