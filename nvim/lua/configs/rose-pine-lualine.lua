local colors = {
  black        = '#282828',
  white        = '#ebdbb2',
  red          = '#fb4934',
  green        = '#b8bb26',
  blue         = '#83a598',
  yellow       = '#fe8019',
  gray         = '#a89984',
  darkgray     = '#3c3836',
  lightgray    = '#504945',
  inactivegray = '#7c6f64',

  love = "#eb6f92",
  base = "#232136",
  text = "#e0def4",
  rose = "#ea9a97",
  subtle = "#817c9c",
  iris = "#c4a7e7",
  overlay = "#393552",
  pine = "#3e8fb0",
  foam = "#9ccfd8"
}

return {
  normal = {
    a = {bg = colors.overlay, fg = colors.text, gui = 'bold'},
    b = {bg = colors.subtle, fg = colors.text},
    c = {bg = colors.base, fg = colors.rose}
  },
  insert = {
    a = {bg = colors.rose, fg = colors.text, gui = 'bold'},
    b = {bg = colors.subtle, fg = colors.text},
    c = {bg = colors.base, fg = colors.rose}
  },
  visual = {
    a = {bg = colors.foam, fg = colors.overlay, gui = 'bold'},
    b = {bg = colors.subtle, fg = colors.text},
    c = {bg = colors.base, fg = colors.rose}
  },
  replace = {
    a = {bg = colors.pine, fg = colors.text, gui = 'bold'},
    b = {bg = colors.subtle, fg = colors.text},
    c = {bg = colors.base, fg = colors.rose}
  },
  command = {
    a = {bg = colors.overlay, fg = colors.text, gui = 'bold'},
    b = {bg = colors.subtle, fg = colors.text},
    c = {bg = colors.base, fg = colors.rose}
  },
  inactive = {
    a = {bg = colors.overlay, fg = colors.text, gui = 'bold'},
    b = {bg = colors.subtle, fg = colors.text},
    c = {bg = colors.base, fg = colors.rose}
  }
}
