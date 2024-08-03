local options = {

  -- configure default paths to orgmode files
  org_agenda_files = "~/txt/org/*",
  org_default_notes_file = "~/txt/org/notes.org",
  -- org_archive_location = '%s_archive::',

  -- configure TODO mode
  org_todo_keywords = {'TODO(t)', 'WAITING', '|', 'DONE',},

  -- set folding
  org_startup_folded = 'overview',

  -- configure calendar to start on Sunday
  calendar_week_start_day = 0,
  org_agenda_start_on_weekday = 0,

  -- configure capture menu to open in floating window
  win_split_mode = function(name)
    -- Make sure it's not a scratch buffer by passing false as 2nd argument
    local bufnr = vim.api.nvim_create_buf(false, false)
    --- Setting buffer name is required
    vim.api.nvim_buf_set_name(bufnr, name)

    local fill = 0.8
    local width = math.floor((vim.o.columns * fill))
    local height = math.floor((vim.o.lines * fill))
    local row = math.floor((((vim.o.lines - height) / 2) - 1))
    local col = math.floor(((vim.o.columns - width) / 2))

    vim.api.nvim_open_win(bufnr, true, {
      relative = "editor",
      width = width,
      height = height,
      row = row,
      col = col,
      style = "minimal",
      border = "rounded"
    })
  end,

 org_capture_templates = {
  t = {
    description = 'Task',
    template = '* TODO %?\n%t',
    target = '~/txt/org/todo.org'
  },

  n = {
    description = 'Note',
    template = '\n',
    target = '~/txt/org/notes.org'
    },

  j = {
    description = 'Journal',
    template = '\n*** %U\n\n%?',
    -- template = '\n*** %<%Y-%m-%d> %<%A>\n**** %U\n\n%?',
    target = '~/txt/journal/%<%Y>.org', -- separate journal target per year
    datetree = {

        tree_type = 'day',
      }
    },
  }
}

require("orgmode").setup(options)
