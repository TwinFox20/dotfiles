return {
  {
    "nvim-mini/mini.indentscope",
    on_attach = function()
      vim.api.nvim_set_hl(0, "TreesitterContextBottom", { sp = "Grey", underline = true })
    end,
  },
  {
    "nvim-mini/mini.surround",
    config = function()
      require("mini.surround").setup({
        search_method = "cover_or_next",
      })
    end,
  }
}
