return {

  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- format on save
    config = function()
      require "configs.conform"
    end,
  },

  -- IDE features
  {
    "charludo/projectmgr.nvim",
    lazy = false, -- important!
    config = function()
      require "configs.projectmgr"
    end,
  },

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
    end,
  },

  -- {
  --   "Olical/conjure",
  --   ft = { "clojure", "fennel", "scheme" }, -- etc
  --   lazy = true,
  --   init = function()
  --     vim.g["conjure#debug"] = true
  --     vim.g["conjure#client#python#stdio#command"] = "python3"
  --     -- vim.g["conjure#client#python#stdio#command"] = os.getenv "CONDA_PREFIX"
  --     -- .. "/bin/ipython --no-autoindent --no-confirm-exit"
  --   end,
  -- },

  -- org features
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
