-- EXAMPLE
local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities
local home = os.getenv "HOME"
local lspconfig = require "lspconfig"
local tsdk = require("mason-registry").get_package("typescript-language-server"):get_install_path()
  .. "/node_modules/typescript/lib"
local servers = {
  "cssls",
  "html",
  "gopls",
  "jsonls",
  "tailwindcss",
  "volar",
}

local vuePlugin = home .. "/node_modules/@vue/typescript_plugin"

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
  }
end

lspconfig.lua_ls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  on_init = on_init,
  settings = {
    Lua = {
      hint = {
        enable = true,
      },
      diagnostics = {
        globals = { "vim" },
      },
      workspace = {
        library = {
          [vim.fn.expand "$VIMRUNTIME/lua"] = true,
          [vim.fn.expand "$VIMRUNTIME/lua/vim/lsp"] = true,
          [vim.fn.stdpath "config" .. "/lua"] = true,
          [vim.fn.stdpath "data" .. "/lazy/ui/nvchad_types"] = true,
          [vim.fn.stdpath "data" .. "/lazy/lazy.nvim/lua/lazy"] = true,
        },
        maxPreload = 100000,
        preloadFileSize = 10000,
      },
    },
  },
}

lspconfig.volar.setup {
  filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue", "json" },
  init_options = {
    vue = {
      hybridMode = false,
    },
  },
}
