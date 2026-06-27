return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },

	event = "VeryLazy",

	config = function()
		local murphy_lualine = {
			normal = {
				a = { fg = "#000000", bg = "#90ee90", gui = "bold" }, -- Light Green
				b = { fg = "#ffffff", bg = "#333333" },
				c = { fg = "#ffffff", bg = "#222222" },
			},
			insert = {
				a = { fg = "#000000", bg = "#ffa500", gui = "bold" }, -- Orange/Yellow
			},
			-- Add visual, replace, etc.
		}
		require("lualine").setup({
			options = { theme = "auto" },
		})
		--		tabline = {
		--			lualine_a = { "buffers" },
		--			lualine_b = { "branch" },
		--			lualine_c = { "filename" },
		--			lualine_x = {},
		--			lualine_y = {},
		--			lualine_z = { "tabs" },
		--		}
	end,
}
