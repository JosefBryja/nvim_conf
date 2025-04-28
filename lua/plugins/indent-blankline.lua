return{
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  ---@module "ibl"
  ---@type ibl.config
  opts = {},
  config = function ()
    require("ibl").setup {
      indent = {
        char = "│", -- the character for indentation guides
      },
      scope = {
        enabled = false, -- highlight the current scope
        show_start = false,
        show_end = false,
      },
      whitespace = {
        remove_blankline_trail = true, -- optional: cleans up trailing indent lines
      },
      exclude = {
        filetypes = { "help", "dashboard", "lazy", "NvimTree" }, -- optional: exclude certain filetypes
      },
    }
  end
}
