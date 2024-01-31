---@type MappingsTable
local M = {}

M.general = {
  n = {
    -- [";"] = { ":", "enter command mode", opts = { nowait = true } },

    --  format with conform
    ["<leader>fm"] = {
      function()
        require("conform").format()
      end,
      "formatting",
    },
  },
  v = {
    [">"] = { ">gv", "indent" },
  },
}

M.zen = {
  n = {
    ["<leader>zm"] = { "<cmd>ZenMode<cr>", "enter zen mode" },
  },
}

M.LazyGit = {
  n = {
    ["<leader>lg"] = { "<cmd>LazyGit<cr>", "enter lazygit" },
  },
}

M.lspconfig = {
  plugin = true,
  n = {
    ["gi"] = {
      function()
        vim.lsp.buf.implementation()
      end,
      "LSP implementation",
    },
  },
}

-- M.ccls = {
--   plugin = true,
--   n = {
--     ["<leader>gh"] = {
--       function()
--         require("ccls").callHierarchy(false)
--       end,
--       "go to incoming calls" },
--     ["<leader>gf"] = {
--       function()
--         require("ccls").callHierarchy(true)
--       end,
--       "go to outgoing calls" },
--   }
-- }

-- more keybinds!

return M
