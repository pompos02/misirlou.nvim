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
local palette = {
  black   = Shade.new("#3b4252", "#465780", "#353a45"),
  red     = Shade.new("#bf616a", "#d06f79", "#a54e56"),
  green   = Shade.new("#a3be8c", "#b1d196", "#8aa872"),
  yellow  = Shade.new("#ebcb8b", "#f0d399", "#d9b263"),
  blue    = Shade.new("#81a1c1", "#8cafd2", "#668aab"),
  magenta = Shade.new("#b48ead", "#c895bf", "#9d7495"),
  cyan    = Shade.new("#88c0d0", "#93ccdc", "#69a7ba"),
  white   = Shade.new("#e5e9f0", "#e7ecf4", "#bbc3d4"),
  orange  = Shade.new("#c9826b", "#d89079", "#b46950"),
  pink    = Shade.new("#bf88bc", "#d092ce", "#a96ca5"),

  comment = "#60728a",

  bg0     = "#232831", -- Dark bg (status line and float)
  bg1     = "#2e3440", -- Default bg
  bg2     = "#39404f", -- Lighter bg (colorcolm folds)
  bg3     = "#444c5e", -- Lighter bg (cursor line)
  bg4     = "#5a657d", -- Conceal, border fg

  fg0     = "#c7cdd9", -- Lighter fg
  fg1     = "#cdcecf", -- Default fg
  fg2     = "#abb1bb", -- Darker fg (status line)
  fg3     = "#7e8188", -- Darker fg (line numbers, fold colums)

  sel0    = "#3e4a5b", -- Popup bg, visual selection bg
  sel1    = "#4f6074", -- Popup sel bg, search bg
}
}

local function get_variant()
    if vim.g.colors_name == "misirlou-happy" then
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
