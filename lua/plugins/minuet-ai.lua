return {
  "milanglacier/minuet-ai.nvim",
  config = function()
    require("minuet").setup({
      -- Your configuration options here
      virtualtext = {
        auto_trigger_ft = { "lua", "javascript", "typescript", "rust", "go", "vue" },
        keymap = {
          accept = "<C-a>", -- accept whole completion
          accept_line = "<C-l>", -- Accept one line
          next = "<C-j>", -- next completion
          dismiss = "<C-e>",
        },
      },
      provider_options = {
        codestral = {
          model = "codestral-latest",
          end_point = "https://codestral.mistral.ai/v1/fim/completions",
          api_key = "CODESTRAL_API_KEY", -- Read from environment variable
          stream = true,
          optional = {
            max_tokens = 256,
            temperature = 0.7,
            stop = { "\n\n" },
          },
        },
      },
    })
  end,
}
