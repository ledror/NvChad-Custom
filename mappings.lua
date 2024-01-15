---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },

    --  format with conform
    ["<leader>fm"] = {
      function()
        require("conform").format()
      end,
      "formatting",
    }

  },
  v = {
    [">"] = { ">gv", "indent"},
  },
}

M.zen = {
  n = {
    ["<leader>zm"] = { "<cmd>ZenMode<cr>", "enter zen mode",},
  }
}

M.LazyGit = {
  n = {
    ["<leader>lg"] = { "<cmd>LazyGit<cr>", "enter lazygit"},
  }
}

-- more keybinds!

return M
