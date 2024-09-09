require("config.lazy")
require("config.lspconfig")
require("mappings")
require("mason").setup()
require("mason-lspconfig").setup {
  ensure_installed = { "lua_ls", "rust_analyzer" },
}
require("config.cmp")
require("conform").setup({
  format_on_save = {
    timeout_ms = 500,
    lsp_format = "fallback",
  },
})

local opt = vim.opt

opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.expandtab = true
opt.smartindent = true
opt.wrap = false
