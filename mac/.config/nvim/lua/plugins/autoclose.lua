return {
  'm4xshen/autoclose.nvim',
  config = function()
    require('autoclose').setup({
      options = {
        disable_filetype = { "markdown" },
      }
    })
  end
}
