-- tes
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
        text = "#aaaaaa",
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

    sure = {
        bg = "#000000",
        nc = "#000000",
        base = "#121212",
        surface = "#1e1e1e",
        overlay = "#2a2a2a",
        muted = "#404040",
        subtle = "#4a4a4a",
        text = "#dbdbdb",
        red = "#d38a95",
        gold = "#d3a677",
        rose = "#d69797",
        blue = "#8c9ab0",
        lavender = "#a2a2c7",
        purple = "#b28fb2",
        green = "#8fad9e",

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
        text = "#dbdbdb",
        red = "#d46a6a",
        gold = "#c9976c",
        rose = "#c37373",
        blue = "#6a7e9b",
        lavender = "#7979a7",
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
        text = "#dbdbdb",
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
    light = {

        bg = "#ffffff",
        nc = "#ffffff",
        base = "#ffffff",
        surface = "#f5f5f5",
        overlay = "#eeeeee",
        muted = "#999999",
        subtle = "#666666",
        text = "#1a1a1a",
        red = "#d94c5a",
        gold = "#71b35a",
        rose = "#56b6c2",
        blue = "#4d92ca",
        lavender = "#b362cb",
        purple = "#de935f",
        green = "#e5c07b",
        highlight_low = "#f0f0f0",
        highlight_med = "#e0e0e0",
        highlight_high = "#d0d0d0",
    },
    lightstrong = {
        bg = "#ffffff",
        nc = "#ffffff",
        base = "#ffffff",
        surface = "#f5f5f5",
        overlay = "#eeeeee",
        muted = "#999999",
        subtle = "#666666",
        text = "#1a1a1a",
        red = "#ce192b",
        gold = "#42aa1d",
        rose = "#14a8bb",
        blue = "#1b79c5",
        lavender = "#a022c5",
        purple = "#de7a35",
        green = "#e2b051",
        highlight_low = "#f0f0f0",
        highlight_med = "#e0e0e0",
        highlight_high = "#d0d0d0",
    },
    lb = {
        bg = "#000000",
        nc = "#000000",
        base = "#000000",
        surface = "#1a1a1a",
        overlay = "#2a2a2a",
        muted = "#666666",
        subtle = "#999999",
        text = "#ffffff",
        red = "#d94c5a",
        gold = "#8ec07c",
        rose = "#56b6c2",
        blue = "#61afef",
        lavender = "#c678dd",
        purple = "#de935f",
        green = "#e5c07b",
        highlight_low = "#1a1a1a",
        highlight_med = "#2a2a2a",
        highlight_high = "#3a3a3a",
    },
    lightmodus = {
        bg = "#ffffff",
        nc = "#ffffff",
        base = "#ffffff",
        surface = "#f5f5f5",
        overlay = "#eeeeee",
        muted = "#a6a6a6",
        subtle = "#595959",
        text = "#000000",
        red = "#a60000",
        gold = "#6f5500",
        rose = "#005e8b",
        blue = "#0031a9",
        lavender = "#531ab6",
        purple = "#721045",
        green = "#006800",
        highlight_low = "#f0f0f0",
        highlight_med = "#e0e0e0",
        highlight_high = "#d0d0d0",
    },
}

local function get_variant()
    if vim.g.colors_name == "misirlou-sure" then
        return "sure"
    elseif vim.g.colors_name == "misirlou-cool" then
        return "cool"
    elseif vim.g.colors_name == "misirlou-happy" then
        return "happy"
    elseif vim.g.colors_name == "misirlou-dragon" then
        return "dragon"
    elseif vim.g.colors_name == "misirlou-fox" then
        return "fox"
    elseif vim.g.colors_name == "misirlou-light" then
        return "light"
    elseif vim.g.colors_name == "misirlou-lightstrong" then
        return "lightstrong"
    elseif vim.g.colors_name == "misirlou-lb" then
        return "lb"
    elseif vim.g.colors_name == "misirlou-lightmodus" then
        return "lightmodus"
    end

    return options.variant or "misirlou"
end

local variant = get_variant()
local palette = palettes[variant] or palettes.misirlou

if options.palette ~= nil and next(options.palette) then
    palette = vim.tbl_extend("force", palette, options.palette or {})
end

return palette
