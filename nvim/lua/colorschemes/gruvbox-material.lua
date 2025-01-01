return { 
  "sainnhe/gruvbox-material", 
  lazy = false,
  priority = 1000 , 
  opts = ...,
  config = function()
    -- local gruvbox = require("gruvbox")
    -- gruvbox.setup({
    --   terminal_colors = true,
    --   transparent_mode = false,
    -- })
    vim.g.gruvbox_material_ui_contrast = 'high'
    vim.g.gruvbox_material_background = 'hard'
    vim.g.gruvbox_material_foreground = 'material'
    vim.g.gruvbox_material_transparent_background = 1
    vim.g.gruvbox_material_enable_italic = true
    vim.cmd.colorscheme('gruvbox-material')
  end,
}
