vim.api.nvim_create_autocmd({"BufEnter", "BufWinEnter"}, {
  pattern = { "*.h", "*.m" },
  callback = function ()
    if vim.bo.filetype == "objcpp" or vim.bo.filetype == "matlab" then
      vim.bo.filetype = "objc"
    end
  end
})
