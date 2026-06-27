vim.api.nvim_create_autocmd("VimEnter", {
	callback = function()
		vim.cmd.colorscheme("moonfly")
		vim.background = light
	end,
})

require("yato")

--autocmd FileType help noremap <buffer> q :q<cr>
