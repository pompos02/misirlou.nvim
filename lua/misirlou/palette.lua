local options = require("misirlou.config").options

local palette = {
    bg = "#000000",
    nc = "#000000",
    base = "#0e0e0e",
    surface = "#1c1c24",
    overlay = "#313131",
    muted = "#4b4b4b",
    subtle = "#5d5d5d",
    text = "#c6c6c6",
    red = "#85555f",
    gold = "#94775f",
    rose = "#916e6e",
    blue = "#4c5764",
    lavender = "#656580",
    purple = "#776579",
    green = "#637370",
    highlight_low = "#262626",
    highlight_med = "#4f4f4f",
    highlight_high = "#797979",
}

if options.palette ~= nil and next(options.palette) then
    palette = vim.tbl_extend("force", palette, options.palette or {})
end

return palette
