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
  }
}
