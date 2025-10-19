local options = require("misirlou.config").options

local palettes = {
    misirlou = {
        bg = "#000000",
        nc = "#000000",
        base = "#121212",
        surface = "#1e1e1e",
        overlay = "#2a2a2a",
        muted = "#404040",
        subtle = "#4a4a4a",
        text = "#c0c0c0",
        red = "#9a5f68",
        gold = "#a27d63",
        rose = "#9f6f6f",
        blue = "#5a6472",
        lavender = "#72728b",
        purple = "#7f6a7f",
        green = "#6b7d78",

        highlight_low = "#1e1e1e",
        highlight_med = "#282828",
        highlight_high = "#707070",
    },
    happy = {
        bg = "#000000",
        nc = "#000000",
        base = "#16151a",
        surface = "#1c1c24",
        overlay = "#252530",
        muted = "#56526e",
        subtle = "#6e6a86",
        text = "#dbdbdb",
        red = "#c77889",
        gold = "#dfb591",
        rose = "#ba8d8d",
        blue = "#7c98b9",
        lavender = "#9f9fcf",
        purple = "#bb9dbd",
        green = "#a7c1bd",
        highlight_low = "#1a1826",
        highlight_med = "#2a283e",
        highlight_high = "#44415a",
        none = "NONE",
    },
}

local function get_variant()
    if vim.g.colors_name == "misirlou-happy" then
        return "happy"
    end
    
    return options.variant or "misirlou"
end

local variant = get_variant()
local palette = palettes[variant] or palettes.misirlou

if options.palette ~= nil and next(options.palette) then
    palette = vim.tbl_extend("force", palette, options.palette or {})
end

return palette
