return {
  "rmagatti/auto-session",
  config = function()
    vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"
    require("auto-session").setup({
      log_level = "error",
      enabled = true,
      auto_save = true,
      auto_restore = true,
      suppressed_dirs = {
        vim.fn.expand("~") .. "/",
        vim.fn.expand("~") .. "/Downloads",
        "/",
      },
      root_dir = vim.fn.stdpath("data") .. "/sessions/",
    })
  end,
}
