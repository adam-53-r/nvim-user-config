return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  "simrat39/rust-tools.nvim",
  "neovim/nvim-lspconfig",
  {
    "nvim-treesitter/nvim-treesitter",
    ensure_installed = { "lua", "rust", "toml" },
    auto_install = true,
    highlight = {
      enable = true,
      additional_vim_regex_highlighting=false,
    },
    ident = { enable = true }, 
    rainbow = {
      enable = true,
      extended_mode = true,
      max_file_lines = nil,
    }
  },
  {
    "rcarriga/nvim-dap-ui",
    config = function(plugin, opts)
      -- run default AstroNvim nvim-dap-ui configuration function
      require "plugins.configs.nvim-dap-ui"(plugin, opts)

      -- disable dap events that are created
      local dap = require "dap"
      -- dap.listeners.after.event_initialized["dapui_config"] = nil
      dap.listeners.before.event_terminated["dapui_config"] = nil
      dap.listeners.before.event_exited["dapui_config"] = nil
    end,
  },
  -- "mg979/vim-visual-multi",
  -- "normen/vim-pio",
  -- "neoclide/coc.nvim"  
}
