-- Custom Parameters (with defaults)
return {
  "David-Kunz/gen.nvim",
  config = function()
    require("gen").prompts["Add docstring"] = {
      prompt = "Add docstring in javascript format to the following function:$text. Only ouput the result in format ```$filetype\n...\n```:\n```$filetype\n$text\n```",
    }
    require("gen").prompts["Add test"] = {
      prompt = "Add tests function using vitest for the following function:$text. Only ouput the result in format ```$filetype\n...\n```:\n```$filetype\n$text\n```",
    }

    --
    require("gen").setup({
      -- model = "magicoder", -- The default model to use.
      model = "dolphin-mistral", -- The default model to use.
      display_mode = "float", -- The display mode. Can be "float" or "split".
      show_prompt = false, -- Shows the Prompt submitted to Ollama.
      show_model = true, -- Displays which model you are using at the beginning of your chat session.
      no_auto_close = false, -- Never closes the window automatically.
      init = function(options)
        pcall(io.popen, "ollama serve > /dev/null 2>&1 &")
      end,
      -- Function to initialize Ollama
      command = "curl --silent --no-buffer -X POST http://localhost:11434/api/generate -d $body",
      -- The command for the Ollama service. You can use placeholders $prompt, $model and $body (shellescaped).
      -- This can also be a lua function returning a command string, with options as the input parameter.
      -- The executed command must return a JSON object with { response, context }
      -- (context property is optional).
      list_models = "<omitted lua function>", -- Retrieves a list of model names
      debug = false, -- Prints errors and the command which is run.
    })
    --
    --
    vim.keymap.set("n", "<leader>aa", "<cmd>Gen Ask<CR>", { desc = "General AI ask" })
    vim.keymap.set("n", "<leader>ag", "<cmd>Gen Generate<CR>", { desc = "Generate code and paste it" })
    vim.keymap.set("v", "<leader>ad", "<cmd>Gen Add docstring<CR>", { desc = "Add docstring to function" })
    vim.keymap.set(
      "v",
      "<leader>ac",
      "<cmd>Gen Change_Code<CR>",
      { desc = "Change code with instruction and paste it" }
    )
    vim.keymap.set("v", "<leader>ae", "<cmd>Gen Enhance_Code<CR>", { desc = "Rewrite code with instruction" })
    vim.keymap.set("v", "<leader>ar", "<cmd>Gen Review_Code<CR>", { desc = "Review the code" })
    vim.keymap.set("v", "<leader>at", "<cmd>Gen Add test<CR>", { desc = "Add test" })
  end,
}
