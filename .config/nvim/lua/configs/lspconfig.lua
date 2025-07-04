local nvlsp = require "nvchad.configs.lspconfig"
nvlsp.defaults()

local servers = {
  "html",
  "gopls",
  "jsonls",
  "tailwindcss",
  "terraformls",
  "biome",
}

-- lsps with default config
for _, lsp in ipairs(servers) do
  vim.lsp.config(lsp, {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  })
end

vim.lsp.config("lua_ls", {
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
})

-- vue and typescript
local vue_language_server_path = vim.fn.stdpath "data"
  .. "/mason/packages/vue-language-server/node_modules/@vue/language-server"

local vue_plugin = {
  name = "@vue/typescript-plugin",
  location = vue_language_server_path,
  languages = { "vue" },
  configNamespace = "typescript",
}

vim.lsp.config("vtsls", {
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,
  settings = {
    vtsls = {
      tsserver = {
        globalPlugins = {
          vue_plugin,
        },
      },
    },
  },
  filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue" },
})

vim.lsp.config("vue_ls", {
  settings = {
    css = {
      validate = true,
      lint = {
        unknownAtRules = "ignore",
      },
    },
    scss = {
      validate = true,
      lint = {
        unknownAtRules = "ignore",
      },
    },
  },
  capabilities = nvlsp.capabilities,
  on_attach = nvlsp.on_attach,
  on_init = function(client)
    client.handlers["tsserver/request"] = function(_, result, context)
      local clients = vim.lsp.get_clients { bufnr = context.bufnr, name = "vtsls" }
      if #clients == 0 then
        vim.notify(
          "Could not found `vtsls` lsp client, vue_lsp would not work without it.",
          vim.log.levels.ERROR
        )
        return
      end
      local ts_client = clients[1]

      local param = unpack(result)
      local id, command, payload = unpack(param)

      ts_client:exec_cmd({
        title = "vue_request_forward",
        command = "typescript.tsserverRequest",
        arguments = {
          command,
          payload,
        },
      }, { bufnr = context.bufnr }, function(_, r)
        if not r or not r.body then
          vim.notify("vtsls did not return a valid response", vim.log.levels.WARN)
          return
        end
        local response_data = { { id, r.body } }
        ---@diagnostic disable-next-line: param-type-mismatch
        client:notify("tsserver/response", response_data)
      end)
    end
  end,
})

vim.lsp.enable "lua_ls"
vim.lsp.enable "vtsls"
vim.lsp.enable "vue_ls"
vim.lsp.enable(servers)
