return {
  {
    "olivercederborg/poimandres.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      local colors = require("poimandres.palette")
      require("poimandres").setup({
        bold_vert_split = true, -- use bold vertical separators
        dim_nc_background = true, -- dim 'non-current' window backgrounds
        disable_background = false, -- disable background
        disable_float_background = false, -- disable background for floats
        disable_italics = false, -- disable italics,
        highlight_groups = {
          LspReferenceText = { bg = colors.blue4, fg = colors.text },
          LspReferenceRead = { bg = colors.blueGray3, fg = colors.text },
          LspReferenceWrite = { bg = colors.blue4, fg = colors.text },
        },
      })
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = function()
        local colors = require("poimandres.palette")
        vim.cmd("colorscheme poimandres")
        vim.api.nvim_set_hl(0, "FloatBorder", { fg = colors.teal1 })
        vim.api.nvim_set_hl(0, "ColorColumn", { bg = "#282a34" })
      end,
    },
  },
}
