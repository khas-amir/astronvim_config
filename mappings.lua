-- Mapping data with "desc" stored directly by vim.keymap.set().
--
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map

    -- navigate buffer tabs with `H` and `L`
    L = {
      function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
      desc = "Next buffer",
    },
    H = {
      function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
      desc = "Previous buffer",
    },

    ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
  },

  -- Save in insert mode
  i = {
    ["<C-s>"] = { "<Esc>:w!<cr>a", desc = "Save File" },
  }
}
