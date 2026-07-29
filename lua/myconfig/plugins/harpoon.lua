return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        local harpoon = require("harpoon")
        harpoon:setup({
          settings = {
            save_on_toggle = true,
            save_on_ui_close = true,
          },
        })
    end,
    keys = function()
        local harpoon = require("harpoon")

        local keys = {
          {
            "<leader>H",
            function() harpoon:list():add() end,
            desc = "Harpoon Add File",
          },
          {
            "<leader>h",
            function() harpoon.ui:toggle_quick_menu(harpoon:list()) end,
            desc = "Harpoon Quick Menu",
          },
          {
            "[h",
            function() harpoon:list():prev() end,
            desc = "Harpoon Prev",
          },
          {
            "]h",
            function() harpoon:list():next() end,
            desc = "Harpoon Next",
          },
        }

        for i = 1, 5 do
          table.insert(keys, {
            "<leader>" .. i,
            function() harpoon:list():select(i) end,
            desc = "Harpoon to File " .. i,
          })
        end

        return keys
    end,
}
