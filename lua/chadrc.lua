-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.base46 = {
  changed_themes = {
    all = {},
    chocolate = {
      base_30 = {
        white = "#cdc0ad",
        darker_black = "#010101",
        black = "#201211", --  nvim bg
        black2 = "#1b1827",
        one_bg = "#2f2c2b",
        one_bg2 = "#393635",
        one_bg3 = "#43403f",
        grey = "#4d4a49",
        grey_fg = "#575453",
        grey_fg2 = "#615e5d",
        light_grey = "#6b6867",
        red = "#c65f5f",
        baby_pink = "#dc7575",
        pink = "#d16a6a",
        line = "#322f2e", -- for lines like vertsplit
        green = "#8ca589",
        vibrant_green = "#95ae92",
        nord_blue = "#728797",
        blue = "#7d92a2",
        yellow = "#d9b27c",
        sun = "#e1ba84",
        purple = "#998396",
        dark_purple = "#917b8e",
        teal = "#749689",
        orange = "#FF7155",
        cyan = "#829e9b",
        statusline_bg = "#292625",
        lightbg = "#353231",
        pmenu_bg = "#859e82",
        folder_bg = "#768b9b",
        beige = "#ab9382",
        pure_yellow = "#D0D000",
      },

      base_16 = {
        base00 = "#222122",
        base01 = "#3f2c2b",
        base02 = "#393635",
        base03 = "#43A03f",
        base04 = "#4d4a49",
        base05 = "#c8bAA4",
        base06 = "#beae94",
        base07 = "#cdc0ad",
        base08 = "#5F5F1F",
        base09 = "#A000A0",
        base0A = "#B0502C",
        base0C = "#D0D000",
        base0B = "#51BF01",
        base0D = "#AF6F00",
        base0E = "#FF8F00",
        base0F = "#FFFFFF",
      },
    },
  },
  theme = "chocolate",

  hl_override = {
    ["@comment"] = { italic = true, fg = "#6A8759" },
    ["@function"] = { fg = "#AF6F00", italic = true },
    ["@function.macro"] = { fg = "#908B25" },
    ["@constructor"] = { fg = "#AF6F00" },
    ["@constant"] = { fg = "beige" },
    ["@constant.builtin"] = { fg = "beige" },
    ["@constant.macro"] = { fg = "#908B25" },
    ["@keyword"] = { fg = "#CC7832" },
  },
}

return M
