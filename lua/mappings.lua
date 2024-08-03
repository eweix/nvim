require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- mapping for ProjectMgr
map("n", "<leader>fp", "<CMD> ProjectMgr<CR>", { desc = "open projects" })

-- mappings for iron REPL
map("n", "<space>rs", "<cmd>IronRepl<cr>", { desc = "open REPL" })
map("n", "<space>rr", "<cmd>IronRestart<cr>", { desc = "restart REPL" })
map("n", "<space>rf", "<cmd>IronFocus<cr>", { desc = "focus REPL" })
-- map("n", "<space>rh", "<cmd>IronHide<cr>", { desc = "hide REPL" })
