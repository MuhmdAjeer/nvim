-- catppuccin

-- return {
-- 	{
-- 		"catppuccin/nvim",
-- 		lazy = false,
-- 		name = "catppuccin",
-- 		priority = 1000,
-- 		config = function()
-- 			vim.cmd.colorscheme("catppuccin-mocha")
-- 		end,
-- 	},
-- }
-- --

--- kangawa

-- return {
-- 	"rebelot/kanagawa.nvim",
-- 	lazy = false,
-- 	priority = 1000,
-- 	config = function()
-- 		require("kanagawa").load("dragon")
-- 		vim.cmd.colorscheme = "kanagawa-dragon"
-- 	end,
-- }
--
--

return {
	"rebelot/kanagawa.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		require("kanagawa").setup({
			compile = false, -- enable compiling the colorscheme
			undercurl = true, -- enable undercurls
			commentStyle = { italic = true },
			functionStyle = {},
			keywordStyle = { italic = true },
			statementStyle = { bold = true },
			typeStyle = {},
			transparent = true, -- do not set background color
			dimInactive = false, -- dim inactive window `:h hl-NormalNC`
			terminalColors = true, -- define vim.g.terminal_color_{0,17}
			colors = { -- add/modify theme and palette colors
				palette = {},
				theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
			},
			overrides = function(colors) -- add/modify highlights
				return {}
			end,
			theme = "dragon", -- Load "wave" theme when 'background' option is not set
			background = { -- map the value of 'background' option to a theme
				dark = "dragon", -- try "dragon" !
				light = "dragon",
			},
		})

		-- setup must be called before loading
		vim.cmd("colorscheme kanagawa")
	end,
}

--
--
---- Rosepine
-- return {
-- 	{
-- 		"rose-pine/neovim",
-- 		name = "rose-pine",
-- 		config = function()
-- 			require("rose-pine").setup({
-- 				variant = "auto", -- auto, main, moon, or dawn
-- 				dark_variant = "main", -- main, moon, or dawn
-- 				dim_inactive_windows = false,
-- 				extend_background_behind_borders = true,
--
-- 				enable = {
-- 					terminal = true,
-- 					legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
-- 					migrations = true, -- Handle deprecated options automatically
-- 				},
--
-- 				styles = {
-- 					bold = true,
-- 					italic = true,
-- 					transparency = false,
-- 				},
--
-- 				groups = {
-- 					border = "muted",
-- 					link = "iris",
-- 					panel = "surface",
--
-- 					error = "love",
-- 					hint = "iris",
-- 					info = "foam",
-- 					note = "pine",
-- 					todo = "rose",
-- 					warn = "gold",
--
-- 					git_add = "foam",
-- 					git_change = "rose",
-- 					git_delete = "love",
-- 					git_dirty = "rose",
-- 					git_ignore = "muted",
-- 					git_merge = "iris",
-- 					git_rename = "pine",
-- 					git_stage = "iris",
-- 					git_text = "rose",
-- 					git_untracked = "subtle",
--
-- 					h1 = "iris",
-- 					h2 = "foam",
-- 					h3 = "rose",
-- 					h4 = "gold",
-- 					h5 = "pine",
-- 					h6 = "foam",
-- 				},
--
-- 				palette = {
-- 					-- Override the builtin palette per variant
-- 					-- moon = {
-- 					--     base = '#18191a',
-- 					--     overlay = '#363738',
-- 					-- },
-- 				},
--
-- 				highlight_groups = {
-- 					-- Comment = { fg = "foam" },
-- 					-- VertSplit = { fg = "muted", bg = "muted" },
-- 				},
--
-- 				before_highlight = function(group, highlight, palette)
-- 					-- Disable all undercurls
-- 					-- if highlight.undercurl then
-- 					--     highlight.undercurl = false
-- 					-- end
-- 					--
-- 					-- Change palette colour
-- 					-- if highlight.fg == palette.pine then
-- 					--     highlight.fg = palette.foam
-- 					-- end
-- 				end,
-- 			})
-- 			vim.cmd("colorscheme rose-pine")
-- 		end,
-- 	},
-- }
