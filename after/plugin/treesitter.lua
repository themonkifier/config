require("nvim-treesitter.install").prefer_git = true

require'nvim-treesitter.configs'.setup {
	ensure_isntalled = { "vimdoc", "javascript", "tyepscript", "c", "cpp", "lua", "rust", "java", "python" },

	sync_install = false,
	auto_install = true,

	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
}
