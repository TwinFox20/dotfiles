return {
  {
    "nvim-mini/mini.indentscope",
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
