require("lint").linters_by_ft = {
  javascript = { "biomejs", "eslint_d" },
  typescript = { "biomejs", "eslint_d" },
  typescriptreact = { "biomejs" },
  javascriptreact = { "biomejs" },
  vue = { "eslint_d" },
  lua = { "luacheck" },
}

require("lint").linters.luacheck = {
  cmd = "luacheck",
  stdin = true,
  args = {
    "--globals",
    "vim",
    "lvim",
    "reload",
    "--",
  },
  stream = "stdout",
  ignore_exitcode = true,
  parser = require("lint.parser").from_errorformat("%f:%l:%c: %m", {
    source = "luacheck",
  }),
}
