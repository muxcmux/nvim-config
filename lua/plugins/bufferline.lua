require("bufferline").setup({
  options = {
    indicator = { style = "none" },
    offsets = {
      {
        filetype = "neo-tree",
        text = " Files",
        highlight = "Directory",
        separator = true, -- use a "true" to enable the default, or set your own character
      },
    },
  },
})
