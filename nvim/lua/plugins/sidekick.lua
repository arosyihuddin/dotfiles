return {
  "folke/sidekick.nvim",
  init = function()
    -- Enable proper scrolling in terminal buffers
    vim.api.nvim_create_autocmd("TermOpen", {
      pattern = "*",
      callback = function()
        vim.opt_local.scrolloff = 0
      end,
    })
  end,
  opts = {
    cli = {
      mux = { enabled = false },
      tools = {
        -- Factory Droid - Interactive mode
        droid = {
          cmd = { "droid" },
        },
        -- Aider - Full autonomous coding agent
        aider = {
          cmd = { "aider" },
        },
        -- Codex - Code search and generation
        codex = {
          cmd = { "codex", "--search" },
        },
        -- GitHub Copilot CLI - Code generation and chat
        copilot = {
          cmd = { "copilot", "--banner" },
        },
        -- Claude CLI - Anthropic conversational AI
        claude = {
          cmd = { "claude" },
        },
        -- Google Gemini CLI
        gemini = {
          cmd = { "gemini" },
        },
        -- Grok CLI - xAI assistant
        grok = {
          cmd = { "grok" },
        },

        qodercli = {
          cmd = { "qodercli" },
        },
      },
    },
  },
  keys = {
    {
      "<tab>",
      function()
        if not require("sidekick").nes_jump_or_apply() then
          return "<Tab>"
        end
      end,
      expr = true,
      desc = "Goto/Apply Next Edit Suggestion",
    },
    {
      "<c-.>",
      function()
        require("sidekick.cli").toggle()
      end,
      desc = "Sidekick Toggle",
      mode = { "n", "t", "i", "x" },
    },
    {
      "<leader>aa",
      function()
        require("sidekick.cli").toggle({ focus = true })
      end,
      desc = "Agent Menu",
      mode = { "n", "v" },
    },
    {
      "<leader>aq",
      function()
        require("sidekick.cli").close()
      end,
      desc = "Quit/Close Agent",
      mode = { "n", "t" },
    },
    {
      "<leader>at",
      function()
        require("sidekick.cli").send({ msg = "{this}" })
      end,
      mode = { "x", "n" },
      desc = "Send This",
    },
    {
      "<leader>af",
      function()
        require("sidekick.cli").send({ msg = "{file}" })
      end,
      desc = "Send File",
    },
    {
      "<leader>av",
      function()
        require("sidekick.cli").send({ msg = "{selection}" })
      end,
      mode = { "x" },
      desc = "Send Visual Selection",
    },
    {
      "<leader>ap",
      function()
        require("sidekick.cli").prompt()
      end,
      mode = { "n", "x" },
      desc = "Prompt Templates",
    },
    {
      "<leader>ac",
      function()
        require("sidekick.cli").toggle({ name = "claude", focus = true })
      end,
      desc = "Claude Agent",
      mode = { "n", "v" },
    },

    {
      "<leader>ad",
      function()
        require("sidekick.cli").toggle({ name = "droid", focus = true })
      end,
      desc = "Factory Droid Agent",
      mode = { "n", "v" },
    },

    {
      "<leader>ax",
      function()
        require("sidekick.cli").toggle({ name = "codex", focus = true })
      end,
      desc = "Codex Agent",
      mode = { "n", "v" },
    },
    {
      "<leader>aC",
      function()
        require("sidekick.cli").toggle({ name = "copilot", focus = true })
      end,
      desc = "Copilot CLI Agent",
      mode = { "n", "v" },
    },
    {
      "<leader>ag",
      function()
        require("sidekick.cli").toggle({ name = "gemini", focus = true })
      end,
      desc = "Gemini Agent",
      mode = { "n", "v" },
    },
  },
}
