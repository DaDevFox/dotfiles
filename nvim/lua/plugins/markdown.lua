return {
  -- "MeanderingProgrammer/render-markdown.nvim",
  -- dependencies = { "nvim-treesitter/nvim-treesitter", "echasnovski/mini.nvim" }, -- if you use the mini.nvim suite
  -- -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.icons' }, -- if you use standalone mini plugins
  -- -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
  -- ---@module 'render-markdown'
  -- ---@type render.md.UserConfig
  -- opts = {},

  "OXY2DEV/markview.nvim",
  lazy = false,
  ft = { "markdown", "markdown-inline" },
  latex = {
    enable = true,
    inlines = { "$" },
  },
  opts = {},
  config = function()
    local preset = require("markview.presets").headings
    require("markview").setup({
      markdown = {
        headings = {
          enable = true,
          shift_width = 0,
          heading_1 = {
            style = "label",
            align = "left",
            icon = "+",
            sign = "++",
            corner_left = " ░▒▓",
            padding_left = " ",
            corner_left_hl = "@comment.warning",
          },
        },
        -- tables = preset.single,
      },
      latex = {
        enable = true,
      },
    })
  end,

  -- needs hologram; kitty/linux + macos based
  -- "Vaisakhkm2625/hologram-math-preview.nvim",
}
