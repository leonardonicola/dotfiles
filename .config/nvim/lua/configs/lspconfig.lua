local lspconfig = require "lspconfig"
local nvlsp = require "nvchad.configs.lspconfig"

nvlsp.defaults()

local servers = {
  "cssls",
  "html",
  "gopls",
  "jsonls",
  "tailwindcss",
  "terraformls",
  "volar",
  "biome",
}

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

lspconfig.eslint.setup {
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,
  on_attach = function(_, bufnr)
    vim.api.nvim_create_autocmd("BufWritePre", {
      buffer = bufnr,
      command = "EslintFixAll",
    })
  end,
  settings = {
    workingDirectory = {
      mode = "auto",
    },
  },
}

lspconfig.lua_ls.setup {
  on_attach = nvlsp.on_attach,
  capabilities = nvlsp.capabilities,
  on_init = nvlsp.on_init,
  settings = {
    Lua = {
      hint = {
        enable = true,
      },
      diagnostics = {
        disable = { "incomplete-signature-doc", "trailing-space" },
        globals = { "vim" },
        -- enable = false,
      },
      workspace = {
        checkThirdParty = false,

        library = {
          vim.env.VIMRUNTIME .. "/lua",
        },
      },
      completion = {
        workspaceWord = true,
        callSnippet = "Both",
      },
    },
  },
}

lspconfig.ts_ls.setup {
  on_attach = nvlsp.on_attach,
  capabilities = nvlsp.capabilities,
  on_init = nvlsp.on_init,
  init_options = {
    plugins = {
      {
        name = "@vue/typescript-plugin",
        location = vim.fn.stdpath "data"
          .. "/mason/packages/vue-language-server/node_modules/@vue/language-server",
        languages = { "vue" },
      },
    },
  },
  filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue" },
}
