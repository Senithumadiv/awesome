local filesystem = require('gears.filesystem')
local mat_colors = require('theme.mat-colors')
local theme_dir = filesystem.get_configuration_dir() .. '/theme'
local dpi = require('beautiful').xresources.apply_dpi

local theme = {}
theme.icons = theme_dir .. '/icons/'
theme.font = 'fira code 12'

-- Colors Pallets

-- Primary
theme.primary = mat_colors.indigo
theme.primary.hue_500 = '#b7bdf8'
-- Accent
theme.accent = mat_colors.pink

-- Background
theme.background = mat_colors.blue_grey

theme.background.hue_800 = '#24273a'
theme.background.hue_900 = '#24273a'

local awesome_overrides = function(theme)  

  --Client
  theme.border_width = dpi(2)
  theme.border_focus = '#f4dbd6'
  theme.border_normal = '#5b6078'

end
return {
  theme = theme,
  awesome_overrides = awesome_overrides
}
