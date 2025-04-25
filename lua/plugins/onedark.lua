return {
    "navarasu/onedark.nvim",
    config = function()
        require("onedark").setup({
            transparent = true,
            style = "warmer",
        })
    end,
}
