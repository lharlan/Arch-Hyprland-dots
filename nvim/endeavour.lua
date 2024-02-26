-- Copyright (c) 2021 Jnhtr
-- MIT license, see LICENSE for more details.
-- stylua: ignore
local colors = {
  black        = '#0C0E0F',
  white        = '#6C6F93',
  red          = '#F43E5C',
  green        = '#09F7A0',
  blue		   = '#7F7FFF',
  yellow       = '#7F3FBF',
  gray		   = '#FF7F7F',
  --darkgray     = '#1A1C23',
  darkgray	   = '#0C0E0F',
  lightgray    = '#2E303E',
  inactivegray = '#1C1E26',
}

return {
  normal = {
    a = { bg = colors.gray, fg = colors.black, gui = 'bold' },
    b = { bg = colors.lightgray, fg = colors.white },
    c = { bg = colors.darkgray, fg = colors.white },
  },
  insert = {
    a = { bg = colors.blue, fg = colors.black, gui = 'bold' },
    b = { bg = colors.lightgray, fg = colors.white },
    c = { bg = colors.darkgray, fg = colors.white },
  },
  visual = {
    a = { bg = colors.yellow, fg = colors.black, gui = 'bold' },
    b = { bg = colors.lightgray, fg = colors.white },
    c = { bg = colors.darkgray, fg = colors.white },
  },
  replace = {
    a = { bg = colors.red, fg = colors.black, gui = 'bold' },
    b = { bg = colors.lightgray, fg = colors.white },
    c = { bg = colors.darkgray, fg = colors.white },
  },
  command = {
    a = { bg = colors.green, fg = colors.black, gui = 'bold' },
    b = { bg = colors.lightgray, fg = colors.white },
    c = { bg = colors.darkgray, fg = colors.white },
  },
  inactive = {
    a = { bg = colors.inactivegray, fg = colors.lightgray, gui = 'bold' },
    b = { bg = colors.inactivegray, fg = colors.lightgray },
    c = { bg = colors.inactivegray, fg = colors.lightgray },
  },
}
