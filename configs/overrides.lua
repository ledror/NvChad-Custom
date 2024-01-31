local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    -- "css",
    -- "javascript", -- we ain't webdevvin yet
    -- "typescript",
    -- "tsx",
    "c",
    "objc",
    "cpp",
    "markdown",
    "markdown_inline",
  },
  indent = {
    enable = false,
    disable = {
      "python",
      "objc",
    },
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    -- "css-lsp",
    "html-lsp",
    -- "typescript-language-server",
    -- "deno",
    -- "prettier",

    -- c/cpp stuff
    -- "clangd", -- disabling clangd because on mac we have clangd preinstalled via xcode
    "clang-format",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return M
