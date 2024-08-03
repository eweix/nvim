return {

  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  {
    "charludo/projectmgr.nvim",
    lazy = false, -- important!
    config = function()
      require "configs.projectmgr"
    end,
  },

  -- { "Olical/conjure", require "configs.conjure" },

  {
    "Vigemus/iron.nvim",
    cmd = function()
      require "configs.iron.cmd"
    end,
    keys = function()
      require "configs.iron.keys"
    end,
    config = function()
      local iron = require "iron.core"
      local options = require "configs.iron.options"
      iron.setup(options)
      -- iron also has a list of commands, see :h iron-commands for all available commands
    end,
  },

  {
    "nvim-orgmode/orgmode",
    event = "VeryLazy",
    ft = { "org" },
    config = function()
      require "configs.orgmode"
    end,
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "stylua",
        "html-lsp",
        "css-lsp",
        "prettier",
      },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "python",
        "scheme",
      },
      ignore_install = { "org" },
    },
  },
}
