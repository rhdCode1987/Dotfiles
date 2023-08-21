return {
  {
    'akinsho/bufferline.nvim',
    version  = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
      require("bufferline").setup{
        options = {
            offsets = {
                {
                    filetype = "NvimTree",
                    text = "File Explorer",
                    padding = 1,
                }
            },
        }
      }
    end
  }
}
