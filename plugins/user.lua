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
  --

-- Use a loop to conveniently call 'setup' on multiple servers and
-- map buffer local keybindings when the language server attaches

  vim.filetype.add({ extension = { templ = "templ" } }),
  vim.api.nvim_create_autocmd("BufEnter", { pattern = "*.templ", callback = function() vim.cmd("TSBufEnable highlight") end }),

}
