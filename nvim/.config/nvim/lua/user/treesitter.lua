local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
	return
end

configs.setup({
	ensure_installed = {
		"bash",
		"c",
		"css",
		"dockerfile",
		"go",
		"graphql",
		"html",
		"javascript",
		"json",
		"json5",
		"lua",
		"markdown",
		"python",
		"regex",
		"rust",
		"scss",
		"solidity",
		"svelte",
		"toml",
		"tsx",
		"typescript",
		"vim",
		"vue",
		"yaml",
	},
	sync_install = false, -- install languages synchronously (only applied to `ensure_installed`)
	ignore_install = { "" }, -- List of parsers to ignore installing
	autopairs = {
		enable = true,
	},
	highlight = {
		enable = true, -- false will disable the whole extension
		disable = { "markdown" }, -- list of language that will be disabled
		additional_vim_regex_highlighting = true,
	},
	indent = { enable = true },
	rainbow = {
		enable = true,
		-- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
		extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
		max_file_lines = nil, -- Do not enable for files with more than n lines, int
		-- colors = {}, -- table of hex strings
		-- termcolors = {} -- table of colour name strings
		colors = {
			"#f7768e",
			"#9ece6a",
			"#e0af68",
			"#7aa2f7",
			"#bb9af7",
			"#7dcfff",
			"#a9b1d6",
		},
	},
	autotag = {
		enable = true,
	},
})
