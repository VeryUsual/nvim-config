return {
    "catgoose/nvim-colorizer.lua",
    event = "BufReadPre",
    opts = {},
    dependencies = {
        "nvim-lua/plenary.nvim",
        {
            "nvim-telescope/telescope-fzf-native.nvim",
            build = "make",
        },
    },
}
