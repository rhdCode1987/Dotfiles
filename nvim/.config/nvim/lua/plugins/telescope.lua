return {
    'nvim-telescope/telescope.nvim', tag = '0.1.2',
      dependencies = { 
        'nvim-lua/plenary.nvim',
        { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
      }
    }
