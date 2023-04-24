local actions = require('telescope.actions')

require('telescope').setup({
  defaults = {
    selection_caret = " ",
    prompt_prefix = " ",
    mappings = {
      i = {
        ["<C-o>"] = actions.send_selected_to_qflist + actions.open_qflist,
      },
      n = {
        ["<C-o>"] = actions.send_selected_to_qflist + actions.open_qflist,
      },
    },
    vimgrep_arguments = {
      "rg",
      "--color=never",
      "--no-heading",
      "--with-filename",
      "--line-number",
      "--column",
      "--smart-case",
      "--trim",
    },
  },

  pickers = {
    find_files = {
      find_command = { "rg", "--files", "--hidden" },
      -- find_command = { "fd", "--type", "file", "--follow", "--hidden", "--exclude", ".git" },
      theme = "ivy",
      layout_config = {
        height = 0.5,
      },
    },
    live_grep = {
      theme = "ivy",
      prompt_prefix = " ",
      layout_config = {
        height = 0.5,
      },
    },
    grep_string = {
      theme = "ivy",
      prompt_prefix = " ",
      layout_config = {
        height = 0.5,
      },
    },
    current_buffer_fuzzy_find = {
      theme = "ivy",
      prompt_prefix = " ",
      layout_config = {
        height = 0.5,
      },
    },
    lsp_definitions = {
      theme = "dropdown",
      prompt_prefix = " ",
    },
    lsp_references = {
      theme = "dropdown",
      prompt_prefix = " ",
    },
    lsp_implementations = {
      theme = "dropdown",
      prompt_prefix = " ",
    },
    lsp_type_definitions = {
      theme = "dropdown",
      prompt_prefix = " ",
    },
  },

  extensions = {
    fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = true,  -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
    }
  }
})

require('telescope').load_extension('fzf')
