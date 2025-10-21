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
    cool = {
        bg = "#000000",
        nc = "#000000",
        base = "#121212",
        surface = "#1e1e1e",
        overlay = "#2a2a2a",
        muted = "#404040",
        subtle = "#4a4a4a",
        text = "#c0c0c0",
        red = "#d46a6a",
        gold = "#c9a96c",
        rose = "#c37373",
        blue = "#718aad",
        lavender = "#7c7cc6",
        purple = "#9b6f9b",
        green = "#75a195",

        highlight_low = "#1e1e1e",
        highlight_med = "#282828",
        highlight_high = "#707070",
    },
    happy = {
        bg = "#000000",
        nc = "#000000",
        base = "#1a1822",
        surface = "#222232",
        overlay = "#2b2b3e",
        muted = "#6c6890",
        subtle = "#8682a6",
        text = "#e0def4",
        red = "#eb6f92",
        gold = "#f6c177",
        rose = "#ea9a97",
        blue = "#3e8fb0",
        lavender = "#9ccfd8",
        purple = "#c4a7e7",
        green = "#95b1ac",
        highlight_low = "#1e1b2c",
        highlight_med = "#35324e",
        highlight_high = "#514f73",
        none = "NONE",
    },
    dragon = {
        bg = "#000000",
        nc = "#000000",
        base = "#12120f",
        surface = "#1D1C19",
        overlay = "#181616",
        muted = "#282727",
        subtle = "#393836",
        text = "#c5c9c5",
        red = "#c4746e",
        gold = "#b6927b",
        rose = "#a292a3",
        blue = "#8ba4b0",
        lavender = "#8992a7",
        purple = "#c4b28a",
        green = "#87a987",
        highlight_low = "#1D1C19",
        highlight_med = "#181616",
        highlight_high = "#625e5a",
    },
    fox = {
        bg = "#000000",
        nc = "#000000",
        base = "#232831",
        surface = "#39404f",
        overlay = "#444c5e",
        muted = "#5a657d",
        subtle = "#7e8188",
        text = "#cdcecf",
        red = "#bf616a",
        gold = "#a3be8c",
        rose = "#88c0d0",
        blue = "#81a1c1",
        lavender = "#b48ead",
        purple = "#d89079",
        green = "#ebcb8b",
        highlight_low = "#3e4a5b",
        highlight_med = "#4f6074",
        highlight_high = "#7e8188",
    },
}

local function get_variant()
    if vim.g.colors_name == "misirlou-cool" then
        return "cool"
    elseif vim.g.colors_name == "misirlou-happy" then
        return "happy"
    elseif vim.g.colors_name == "misirlou-dragon" then
        return "dragon"
    elseif vim.g.colors_name == "misirlou-fox" then
        return "fox"
    end

    return options.variant or "misirlou"
end

local variant = get_variant()
local palette = palettes[variant] or palettes.misirlou

if options.palette ~= nil and next(options.palette) then
    palette = vim.tbl_extend("force", palette, options.palette or {})
end

return palette
