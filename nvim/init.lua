-- OPTION 1

-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- OPTION 2 (Windows specific)

-- vim.cmd("set runtimepath^=~/AppData/Local/nvim-data/lazy/dashboard-nvim")
-- require("dashboard").setup({})

-- OPTION 3

-- -- Bootstrap Lazy.nvim
-- local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
-- if not vim.loop.fs_stat(lazypath) then
--   vim.fn.system({
--     "git", "clone", "--filter=blob:none",
--     "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath
--   })
-- end
-- vim.opt.rtp:prepend(lazypath)
--
-- vim.g.lazyvim_builtins = vim.g.lazyvim_builtins or {}
-- vim.g.lazyvim_builtins["dashboard"] = false
--
-- print ("HI HELLO") -- Load LazyVim with only dashboard-nvim
-- require("lazy").setup({
--   {
--     "folke/LazyVim",
--     import = "lazyvim.plugins",
--   },
--   {
--     "nvimdev/dashboard-nvim",
--     priority = 1000,
--     event = "VimEnter",
--     config = function()
--       require("dashboard").setup({
--         theme = "doom",
--         config = {
--           header = {
--             "███╗   ██╗██╗   ██╗██╗███╗   ███╗",
--             "████╗  ██║██║   ██║██║████╗ ████║",
--             "██╔██╗ ██║██║   ██║██║██╔████╔██║",
--             "██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║",
--             "██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║",
--             "╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝",
--           },
--         },
--       })
--     end,
--   }
-- }, {
--   defaults = { lazy = true },
-- })
--
