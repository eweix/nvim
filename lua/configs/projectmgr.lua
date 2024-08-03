local options = {
  autogit = {
    enabled = false,
    -- command = "git pull --ff-only >> .git/fastforward.log 2>&1",
  },
  -- autosave workspace
  session = { enabled = true, file = ".git/Session.vim" },
}
require("projectmgr").setup(options)
