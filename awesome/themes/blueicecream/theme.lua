-----------------------------------------------------------
--  Theme give rise to 'moss' & 'zenburn' awesome theme  --
-----------------------------------------------------------

green = "#7fb219"
cyan  = "#7f4de6"
red   = "#e04613"
lblue = "#6c9eab"
dblue = "#00ccff"
black = "#3f3f3f"
lgrey = "#d2d2d2"
dgrey = "#333333"
white = "#ffffff"

-- {{{ Main
theme = {}
theme.wallpaper_cmd = { "awsetbg /home/kyndt/.config/awesome/themes/blueicecream/background.png" }
-- }}}

-- {{{ Styles
theme.font      = "montecarlo 8"

-- {{{ Colors
theme.bg_normal   = "#1b1b1b"--"#DCDCCC"
theme.bg_focus    = "#1b1b1b"
theme.bg_urgent   = "#1b1b1b"
theme.bg_minimize = "#1b1b1b"

theme.fg_normal   = "#d0d0cc"
theme.fg_focus    = "#23abd2"
theme.fg_urgent   = "#ff0000"
theme.fg_minimize = "#c8e7a8"
--theme.fg_normal = "#AAAAAA"--"#DCDCCC"
--theme.fg_focus  = "#F0DFAF"
--theme.fg_urgent = "#CC9393"
--theme.bg_normal = "#222222"
--theme.bg_focus  = "#1E2320"
--theme.bg_urgent = "#3F3F3F"
-- }}}

-- {{{ Borders
theme.border_width  = "1"
theme.border_normal = "#3F3F3F"
theme.border_focus  = "#17586A"--"#6F6F6F"
theme.border_marked = "#CC9393"
-- }}}

-- {{{ Titlebars
theme.titlebar_bg_focus  = "#3F3F3F"
theme.titlebar_bg_normal = "#3F3F3F"
-- }}}

theme.taglist_fg_focus                      = dblue
theme.tasklist_bg_focus                     = "#222222"
theme.tasklist_fg_focus                     = dblue

theme.textbox_widget_as_label_font_color    = white
theme.textbox_widget_margin_top             = 1

theme.text_font_color_1                     = green
theme.text_font_color_2                     = dblue
theme.text_font_color_3                     = white

theme.notify_font_color_1                   = green
theme.notify_font_color_2                   = dblue
theme.notify_font_color_3                   = black
theme.notify_font_color_4                   = white
theme.notify_font                           = "Monaco 7"
theme.notify_fg                             = theme.fg_normal
theme.notify_bg                             = theme.bg_normal
theme.notify_border                         = theme.border_focus

theme.awful_widget_bckgrd_color             = dgrey
theme.awful_widget_border_color             = dgrey
theme.awful_widget_color                    = dblue
theme.awful_widget_gradien_color_1          = orange
theme.awful_widget_gradien_color_2          = orange
theme.awful_widget_gradien_color_3          = orange
theme.awful_widget_height                   = 14
theme.awful_widget_margin_top               = 2


-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- [taglist|tasklist]_[bg|fg]_[focus|urgent]
-- titlebar_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- Example:
--theme.taglist_bg_focus = "#CC9393"
-- }}}

-- {{{ Widgets
-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.fg_widget        = "#AECF96"
--theme.fg_center_widget = "#88A175"
--theme.fg_end_widget    = "#FF5656"
--theme.bg_widget        = "#494B4F"
--theme.border_widget    = "#3F3F3F"
-- }}}

-- {{{ Mouse finder
theme.mouse_finder_color = "#CC9393"
-- mouse_finder_[timeout|animate_timeout|radius|factor]
-- }}}

-- {{{ Menu
-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_height = "18"
theme.menu_width  = "160"
-- }}}

blue_dir = "/home/kyndt/.config/awesome/themes/blueicecream/icons_blue"
-- {{{ Icons
-- {{{ Taglist
theme.taglist_squares_sel   = blue_dir .. "/squarefz.png"
theme.taglist_squares_unsel = blue_dir .. "/squarez.png"
--theme.taglist_squares_resize = "false"
-- }}}

-- {{{ Misc
theme.awesome_icon            = blue_dir .. "/awesome-icon.png"
theme.clear_icon              = blue_dir .. "/clear.png"
theme.menu_submenu_icon       = blue_dir .. "/submenu.png"
theme.tasklist_floating_icon  = blue_dir .. "/floatingm.png"
-- }}}

-- {{{ Layout
theme.layout_tile       = blue_dir .. "/tile.png"
theme.layout_tileleft   = blue_dir .. "/tileleft.png"
theme.layout_tilebottom = blue_dir .. "/tilebottom.png"
theme.layout_tiletop    = blue_dir .. "/tiletop.png"
theme.layout_fairv      = "/usr/share/awesome/themes/zenburn/layouts/fairv.png"
theme.layout_fairh      = "/usr/share/awesome/themes/zenburn/layouts/fairh.png"
theme.layout_spiral     = "/usr/share/awesome/themes/zenburn/layouts/spiral.png"
theme.layout_dwindle    = "/usr/share/awesome/themes/zenburn/layouts/dwindle.png"
theme.layout_max        = "/usr/share/awesome/themes/zenburn/layouts/max.png"
theme.layout_fullscreen = "/usr/share/awesome/themes/zenburn/layouts/fullscreen.png"
theme.layout_magnifier  = "/usr/share/awesome/themes/zenburn/layouts/magnifier.png"
theme.layout_floating   = blue_dir .. "/floating.png"
-- }}}

-- {{{ Titlebar
theme.titlebar_close_button_focus               = blue_dir .. "/close_focus.png"
theme.titlebar_close_button_normal              = blue_dir .. "/close_normal.png"

theme.titlebar_ontop_button_focus_active        = blue_dir .. "/ontop_focus_active.png"
theme.titlebar_ontop_button_normal_active       = blue_dir .. "/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_inactive      = blue_dir .. "/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_inactive     = blue_dir .. "/ontop_normal_inactive.png"

theme.titlebar_sticky_button_focus_active       = blue_dir .. "/sticky_focus_active.png"
theme.titlebar_sticky_button_normal_active      = blue_dir .. "/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_inactive     = blue_dir .. "/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_inactive    = blue_dir .. "/sticky_normal_inactive.png"

theme.titlebar_floating_button_focus_active     = blue_dir .. "/floating_focus_active.png"
theme.titlebar_floating_button_normal_active    = blue_dir .. "/floating_normal_active.png"
theme.titlebar_floating_button_focus_inactive   = blue_dir .. "/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_inactive  = blue_dir .. "/floating_normal_inactive.png"

theme.titlebar_maximized_button_focus_active    = blue_dir .. "/maximized_focus_active.png"
theme.titlebar_maximized_button_normal_active   = blue_dir .. "/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_inactive  = blue_dir .. "/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_inactive = blue_dir .. "/maximized_normal_inactive.png"
-- }}}

-- {{{ Titlebar +
theme.batt_icon                             = blue_dir .. "/bat_full_01.png"
theme.widget_mem                            = blue_dir .. "/mem.png"
theme.cpu_icon                              = blue_dir .. "/cpu.png"
theme.clock_icon                            = blue_dir .. "/clock.png"
theme.wifi_icon                             = blue_dir .. "/wifi_02.png"
theme.widget_hdd                            = blue_dir .. "/info_03.png"
theme.vol_icon                              = blue_dir .. "/spkr_01.png"
--theme.widget_task                           =my_dir .. "/task.png"
--theme.widget_mail                           =my_dir .. "/mail.png"
theme.pause_icon                            = blue_dir .. "/icons_blue/pause.png"
theme.play_icon                             = blue_dir .. "/play.png"
theme.stop_icon                             = blue_dir .. "/stop.png"
theme.next_icon                             = blue_dir .. "/next.png"
theme.prev_icon                             = blue_dir .. "/prev.png"
--
-- }}}

return theme
