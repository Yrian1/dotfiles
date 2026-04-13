require("yato")

vim.api.nvim_create_autocmd("VimEnter", {
	callback = function()
		vim.cmd.colorscheme("gruvbox-material")
		vim.background = light
	end,
})
