local options = {
	lsp_fallback = true,
	-- Define formatters
	formatters_by_ft = {
		lua = { "stylua" },
		-- python = { "isort", "black" },
		javascript = { { "prettierd", "prettier" } },
	},

	-- Set up format-on-save
	format_on_save = { timeout_ms = 500, lsp_fallback = true },

	-- Customize formatters
	formatters = {
		shfmt = {
			prepend_args = { "-i", "2" },
		},
	},
}

require("conform").setup(options)
require("conform").formatters.injected = {
	options = {
		-- Set individual option values
		ignore_errors = true,
		lang_to_ext = {
			json = "json",
			rust = "rs",
		},
		lang_to_formatters = {
			json = { "jq" },
			rust = { "rustfmt" },
		},
		-- The default edition of Rust to use when no Cargo.toml file is found
		default_edition = "2021",
	},
}
