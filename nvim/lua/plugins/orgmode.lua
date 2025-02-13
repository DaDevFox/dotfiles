return {
  -- OPTION 1: much more emacs-like

  -- "nvim-orgmode/orgmode",
  -- event = "VeryLazy",
  -- ft = { "org" },
  -- config = function()
  --   -- Setup orgmode
  --   require("orgmode").setup({
  --     org_agenda_files = "~/orgfiles/**/*",
  --     org_default_notes_file = "~/orgfiles/refile.org",
  --   })
  --
  --   -- NOTE: If you are using nvim-treesitter with ~ensure_installed = "all"~ option
  --   -- add ~org~ to ignore_install
  --   -- require("nvim-treesitter.configs").setup({
  --   --   ensure_installed = "all",
  --   --   ignore_install = { "org" },
  --   -- })
  -- end,

  -- OPTION 2: new thing

  "nvim-neorg/neorg",
  -- build = ":Neorg sync-parsers",
  opts = {
    load = {
      ["core.defaults"] = {}, -- Loads default behaviour
      ["core.concealer"] = {}, -- Adds pretty icons to your documents
      ["core.integrations.treesitter"] = {}, -- Adds pretty icons to your documents
      ["core.qol.todo_items"] = {},
      ["core.ui.calendar"] = {},
      -- ["core.dirman"] = { -- Manages Neorg workspaces
      --   -- config = {
      --   --   workspaces = {
      --   --     notes = "~/notes",
      --   --   },
      --   -- },
      -- },
    },
  },
  dependencies = { { "nvim-lua/plenary.nvim" } },
}
