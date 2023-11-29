local config = function()
	require("nvim-treesitter.configs").setup({
		build = "TSUpdate",
		indent = {
			enable = true,
		},
		autotag = {
			enable = true,
		},
		event = {
			"BufReadPre",
			"BufNewFile",
		},
		ensure_installed = {
			"astro",
			"bash",
			--'c',
			"css",
			--'dockerfile',
			--'go',
			"html",
			'javscript',
			"json",
			"lua",
			"python",
			--'rust',
			--'svelte',
			--'toml',
			"typescript",
			--'vue',
			--'yaml',
		},
		auto_install = true,
		highlight = {
			enable = true,
			additional_vim_regex_highlighting = true,
		},
	})
end

return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	config = config,
}
