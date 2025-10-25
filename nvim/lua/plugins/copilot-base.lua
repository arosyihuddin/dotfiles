return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "InsertEnter",
  config = function()
    require("copilot").setup({
      suggestion = { enabled = true },
      panel = { enabled = true },
      copilot_node_command = "node",
      server_opts_overrides = {
        -- Enable LSP server for sidekick.nvim NES (Next Edit Suggestions)
        settings = {
          advanced = {
            inlineSuggestEnable = true,
          },
        },
      },
    })
  end,
}
