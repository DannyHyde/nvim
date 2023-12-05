local on_attach = require("util.lsp").on_attach
local diagnostic_signs = require("util.lsp").diagnostic_signs

local config = function()
	require("neoconf").setup({})
	local cmp_nvim_lsp = require("cmp_nvim_lsp")
	local lspconfig = require("lspconfig")

	for type, icon in pairs(diagnostic_signs) do
		local hl = "DiagnosticSign" .. type
		vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
	end

	local capabilities = cmp_nvim_lsp.default_capabilities()

	-- astro js
	-- TODO

	-- bash
	lspconfig.bashls.setup({
		capabilities = capabilities,
		on_attach = on_attach,
		filetypes = { "sh" },
	})

	-- c/cpp
	-- TODO

	-- css
	lspconfig.cssls.setup({
		capabilities = capabilities,
		on_attach = on_attach,
		filetypes = {
			"css",
			"less",
			"scss",
		},
		provideFormatter = false,
	})

	-- emmet
	lspconfig.emmet_ls.setup({
		capabilities = capabilities,
		on_attach = on_attach,
		filetypes = {
			"css",
			"html",
			"javascript",
			"javascriptreact",
			"less",
			"scss",
			"svelte",
			"typescript",
			"typescriptreact",
			"vue",
		},
	})

	-- go
	-- TODO

	-- html
	local htmlcap = vim.lsp.protocol.make_client_capabilities()
	htmlcap.textDocument.completion.completionItem.snippetSupport = true

	lspconfig.html.setup({
		capabilities = htmlcap,
		on_attach = on_attach,
		filetypes = { "html" },
		settings = {
			configurationSection = {
				"html",
				"css",
				"javascript",
			},
			embeddedLanguages = {
				css = true,
				javascript = true,
			},
			provideFormatter = false,
		},
	})

	-- javascript & typescript
	lspconfig.tsserver.setup({
		capabilities = capabilities,
		on_attach = on_attach,
		filetypes = {
			"javascript",
			"javascript.jsx",
			"javascriptreact",
			"typescript",
			"typescript.tsx",
			"typescriptreact",
		},
		root_dir = lspconfig.util.root_pattern("package.json", "jsconfig.json", "tsconfig.json", ".git"),
	})

	-- json
	lspconfig.jsonls.setup({
		capabilities = capabilities,
		on_attach = on_attach,
		filetypes = { "json", "jasonc" },
	})

	-- lua
	lspconfig.lua_ls.setup({
		capabilities = capabilities,
		on_attach = on_attach,
		settings = {
			Lua = {
				diagnostics = {
					globals = { "vim" },
				},
				workspace = {
					library = {
						[vim.fn.expand("$VIMRUNTIME/lua")] = true,
						[vim.fn.stdpath("config") .. "/lua"] = true,
					},
				},
			},
		},
	})

	-- python
	lspconfig.pyright.setup({
		capabilities = capabilities,
		on_attach = on_attach,
		settings = {
			pyright = {
				disableOrganizeImports = false,
				analysis = {
					useLibraryCodeForTypes = true,
					autoSearchPaths = true,
					diaggnosticMode = "workspace",
					autoImportCompletions = true,
				},
			},
		},
	})

  -- rust
  -- TODO

  -- svelte
  -- TODO

  -- vue
  -- TODO

	local shellcheck = require("efmls-configs.linters.shellcheck")
	local shfmt = require("efmls-configs.formatters.shfmt")
	local eslint_d = require("efmls-configs.linters.eslint_d")
	local prettier_d = require("efmls-configs.formatters.prettier_d")
	local luacheck = require("efmls-configs.linters.luacheck")
	local stylua = require("efmls-configs.formatters.stylua")
	local flake8 = require("efmls-configs.linters.flake8")
	local black = require("efmls-configs.formatters.black")
	local fixjson = require("efmls-configs.formatters.fixjson")

	-- efm server
	lspconfig.efm.setup({
		filetypes = {
			"css",
			"html",
			"javascript",
      "javascript.jsx",
			"javascriptreact",
			"json",
			"jsonc",
			"lua",
			"python",
			"sh",
			"typescript",
      "typescript.tsx",
			"typescriptreact",
		},
		init_options = {
			documentFormatting = true,
			documentRangeFormatting = true,
			hover = true,
			doumentSymbol = true,
			codeAction = true,
			completion = true,
		},
		settings = {
			languages = {
				css = { prettier_d },
				html = { prettier_d },
				javascript = { eslint_d, prettier_d },
				javascriptreact = { eslint_d, prettier_d },
				json = { eslint_d, fixjson },
				jsonc = { eslint_d, fixjson },
				lua = { luacheck, stylua },
				python = { flake8, black },
				sh = { shellcheck, shfmt },
				typescript = { eslint_d, prettier_d },
				typescriptreact = { eslint_d, prettier_d },
			},
		},
	})
end

return {
	"neovim/nvim-lspconfig",
	config = config,
	lazy = false,
	dependencies = {
		"windwp/nvim-autopairs",
		"williamboman/mason.nvim",
		"creativenull/efmls-configs-nvim",
		"hrsh7th/nvim-cmp",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-nvim-lsp",
	},
}
