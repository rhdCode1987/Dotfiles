return {
  {
    "nvim-neorg/neorg",
    build = ":Neorg sync-parsers",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("neorg").setup {
        load = {
          ["core.defaults"] = {}, -- Loads default behaviour
          ["core.concealer"] = {}, -- Adds pretty icons to your documents
          ["core.export"] = {},
          ["core.dirman"] = { -- Manages Neorg workspaces
            config = {
              workspaces = {
                sicp = "~/learning/notes/sicp",
                math = "~/learning/notes/math",
                notes="~/learning/notes/notes",
                cheat="~/learning/notes/cheatsheets",
              },
              default_workspace = "notes",
            },
          },
          ["core.completion"] = {
            config = { engine = "nvim-cmp", }   
          }
        },
      }
    end,
  },
}
