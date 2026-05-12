return {
  "nvim-tree/nvim-tree.lua",
  lazy = false,
  config = function()
    require("nvim-tree").setup {
      hijack_cursor = true,
      hijack_unnamed_buffer_when_opening = true,
      sync_root_with_cwd = true,
      respect_buf_cwd = true,

      on_attach = function(bufnr)
        local api = require "nvim-tree.api"

        local function opts(desc)
          return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
        end

        -- default mappings
        api.map.on_attach.default(bufnr)

        -- custom mappings
        vim.keymap.set("n", "<C-s>", api.tree.toggle)
        vim.keymap.set("n", "<C-t>", api.tree.change_root_to_parent, opts("Up"))
        vim.keymap.set("n", "?",     api.tree.toggle_help, opts("Help"))
      end,

      renderer = {
        full_name = true,
        group_empty = true,
        special_files = {},
        symlink_destination = false,
        indent_markers = {
          enable = true,
        },
      },
    }
  end
}
