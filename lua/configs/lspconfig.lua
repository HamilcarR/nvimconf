-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

-- EXAMPLE
local servers = { "html", "cssls", "clangd", "pyright" }
local nvlsp = require "nvchad.configs.lspconfig"

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end
lspconfig.pyright.setup {
  cmd = {
    "pyright-langserver",
    "--stdio",
  },
  filetypes = {
    "python",
  },
  settings = {
    python = {
      analysis = {
        autoSearchPaths = true,
        diagnosticMode = "openFilesOnly",
        useLibraryCodeForTypes = true,
      },
    },
  },
}

lspconfig.clangd.setup {
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = vim.tbl_deep_extend("force", nvlsp.capabilities, {
    textDocument = {
      semanticTokens = {
        dynamicRegistration = true,
        requests = {
          range = true,
          full = {
            delta = true,
          },
        },
        tokenModifiers = { "inactive" }, -- Only need 'inactive' modifier
        tokenTypes = {
          "comment",
          "keyword",
          "string",
          "number",
          "regexp",
          "operator",
          -- [...] (keep existing token types from default capabilities)
        },
      },
    },
  }),
  cmd = {
    "clangd",
    "--clang-tidy",
    "--completion-style=detailed",
    "--header-insertion=iwyu",
    "--enable-config",
    "--pch-storage=memory",
    "--log=verbose",
  },
  filetypes = { "c", "cpp", "objc", "objcpp", "cuda" },
}

lspconfig.ts_ls.setup {
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,
}
