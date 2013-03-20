-------------------------------
--  "Zenburn" awesome theme  --
--    By Adrian C. (anrxc)   --
-------------------------------

-- Alternative icon sets and widget icons:
--  * http://awesome.naquadah.org/wiki/Nice_Icons

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
theme.wallpaper_cmd = { "awsetbg /home/kyndt/.config/awesome/themes/zenburn/zenburn-background.png" }
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

my_dir  = "/home/kyndt/.config/awesome/themes/zenburn/icons/powerarrow"
my_dir2 = "/home/kyndt/.config/awesome/themes/zenburn/icons/"
blue_dir = "/home/kyndt/.config/awesome/themes/zenburn/icons_blue"
-- {{{ Icons
-- {{{ Taglist
theme.taglist_squares_sel   = my_dir .. "/squarefz.png"
theme.taglist_squares_unsel = my_dir .. "/squarez.png"
--theme.taglist_squares_resize = "false"
-- }}}

-- {{{ Misc
theme.awesome_icon            = my_dir .. "/awesome-icon.png"
theme.clear_icon              = my_dir .. "/clear.png"
theme.menu_submenu_icon       = my_dir .. "/submenu.png"
theme.tasklist_floating_icon  = my_dir .. "/floatingm.png"
-- }}}

-- {{{ Layout
theme.layout_tile       = my_dir .. "/tile.png"
theme.layout_tileleft   = my_dir .. "/tileleft.png"
theme.layout_tilebottom = my_dir .. "/tilebottom.png"
theme.layout_tiletop    = my_dir .. "/tiletop.png"
theme.layout_fairv      = "/usr/share/awesome/themes/zenburn/layouts/fairv.png"
theme.layout_fairh      = "/usr/share/awesome/themes/zenburn/layouts/fairh.png"
theme.layout_spiral     = "/usr/share/awesome/themes/zenburn/layouts/spiral.png"
theme.layout_dwindle    = "/usr/share/awesome/themes/zenburn/layouts/dwindle.png"
theme.layout_max        = "/usr/share/awesome/themes/zenburn/layouts/max.png"
theme.layout_fullscreen = "/usr/share/awesome/themes/zenburn/layouts/fullscreen.png"
theme.layout_magnifier  = "/usr/share/awesome/themes/zenburn/layouts/magnifier.png"
theme.layout_floating   = my_dir .. "/floating.png"
-- }}}

-- {{{ Titlebar
theme.titlebar_close_button_focus               = my_dir .. "/close_focus.png"
theme.titlebar_close_button_normal              = my_dir .. "/close_normal.png"

theme.titlebar_ontop_button_focus_active        = my_dir .. "/ontop_focus_active.png"
theme.titlebar_ontop_button_normal_active       = my_dir .. "/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_inactive      = my_dir .. "/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_inactive     = my_dir .. "/ontop_normal_inactive.png"

theme.titlebar_sticky_button_focus_active       = my_dir .. "/sticky_focus_active.png"
theme.titlebar_sticky_button_normal_active      = my_dir .. "/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_inactive     = my_dir .. "/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_inactive    = my_dir .. "/sticky_normal_inactive.png"

theme.titlebar_floating_button_focus_active     = my_dir .. "/floating_focus_active.png"
theme.titlebar_floating_button_normal_active    = my_dir .. "/floating_normal_active.png"
theme.titlebar_floating_button_focus_inactive   = my_dir .. "/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_inactive  = my_dir .. "/floating_normal_inactive.png"

theme.titlebar_maximized_button_focus_active    = my_dir .. "/maximized_focus_active.png"
theme.titlebar_maximized_button_normal_active   = my_dir .. "/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_inactive  = my_dir .. "/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_inactive = my_dir .. "/maximized_normal_inactive.png"
-- }}}

-- {{{ Titlebar +
theme.batt_icon                             = blue_dir .. "/bat_full_01.png"
theme.widget_mem                            = blue_dir .. "/mem.png"
theme.cpu_icon                              = blue_dir .. "/cpu.png"
theme.clock_icon                            = blue_dir .. "/clock.png"
theme.wifi_icon                             = blue_dir .. "/wifi_02.png"
theme.widget_hdd                            = blue_dir .. "/info_03.png"
theme.vol_icon                              = blue_dir .. "/spkr_01.png"
theme.widget_task                           =my_dir .. "/task.png"
theme.widget_mail                           =my_dir .. "/mail.png"
theme.pause_icon                            = blue_dir .. "/icons_blue/pause.png"
theme.play_icon                             = blue_dir .. "/play.png"
theme.stop_icon                             = blue_dir .. "/stop.png"
theme.next_icon                             = blue_dir .. "/next.png"
theme.prev_icon                             = blue_dir .. "/prev.png"
--
--theme.widget_battery                            = my_dir .. "/battery.png"
--theme.widget_mem                                = my_dir .. "mem.png"
--theme.widget_cpu                                = my_dir .. "/cpu.png"
--theme.widget_temp                               = my_dir .. "/temp.png"
--theme.widget_net                                = my_dir .. "/net.png"
--theme.widget_hdd                                = my_dir .. "/hdd.png"
--theme.widget_music                              = my_dir .. "/music.png"
--theme.widget_task                               = my_dir .. "/task.png"
--theme.widget_mail                               = my_dir .. "/mail.png"
 
theme.arr1                                      = my_dir .. "/arr1.png"
theme.arr2                                      = my_dir .. "/arr2.png"
theme.arr3                                      = my_dir .. "/arr3.png"
theme.arr4                                      = my_dir .. "/arr4.png"
theme.arr5                                      = my_dir .. "/arr5.png"
theme.arr6                                      = my_dir .. "/arr6.png"
theme.arr7                                      = my_dir .. "/arr7.png"
theme.arr8                                      = my_dir .. "/arr8.png"
theme.arr9                                      = my_dir .. "/arr9.png"
theme.arr0                                      = my_dir .. "/arr0.png"
-- }}}

-- {{{ User icons
theme.goldendict_icon           = my_dir2 .. "/goldendict.png"
theme.books_icon                = my_dir2 .. "/books_brown.png"
theme.xfe_icon                  = my_dir2 .. "/xfe.png"
theme.xferoot_icon              = my_dir2 .. "/xfe-root.png"
theme.htop_icon                 = my_dir2 .. "/activity_monitor.png"
theme.audacious_icon            = my_dir2 .. "/audacious.png"
theme.deadbeef_icon             = my_dir2 .. "/deadbeef.png"
theme.vlc_icon                  = my_dir2 .. "/vlc.png"
theme.xfburn_icon               = my_dir2 .. "/xfburn.png"
theme.myedu_icon                = my_dir2 .. "/nucleus24.png"
theme.ideaCE_icon               = my_dir2 .. "/ideaCE.png"
theme.ideaUE_icon               = my_dir2 .. "/ideaUE.png"
theme.pycharm_icon              = my_dir2 .. "/PyCharm_16.png"
theme.emacs_icon                = my_dir2 .. "/emacs.png"
theme.sublime_icon              = my_dir2 .. "/SublimeText2old.png"
theme.eclipse_icon              = my_dir2 .. "/eclipse.png"
theme.galculator_icon           = my_dir2 .. "/accessories-calculator.png"
theme.spacefm_icon              = my_dir2 .. "/file-manager.png"
theme.gedit_icon                = my_dir2 .. "/text-editor.png"
theme.terminal_icon             = my_dir2 .. "/gnome-terminal.png"
theme.terminalroot_icon         = my_dir2 .. "/gksu-root-terminal.png"
theme.system_icon               = my_dir2 .. "/processor.png"
theme.android_icon              = my_dir2 .. "/android_hdpi.png"
theme.gcolor_icon               = my_dir2 .. "/icon.png"
theme.gimp_icon                 = my_dir2 .. "/gimp.png"
theme.inkscape_icon             = my_dir2 .. "/inkscape.png"
theme.recordmydesktop_icon      = my_dir2 .. "/gtk-recordmydesktop.png"
theme.screengrab_icon           = my_dir2 .. "/screengrab.png"
theme.xmag_icon                 = my_dir2 .. "/xmag.png"
theme.mydevmenu_icon            = my_dir2 .. "/safety_helmet.png"
theme.mymultimediamenu_icon     = my_dir2 .. "/emblem_multimedia.png"
theme.mygraphicsmenu_icon       = my_dir2 .. "/graphics.png"
theme.nvidia_icon               = my_dir2 .. "/nvidia-settings.png"
theme.myofficemenu_icon         = my_dir2 .. "/applications_office.png"
theme.mytoolsmenu_icon          = my_dir2 .. "/tool_box.png"
theme.mywebmenu_icon            = my_dir2 .. "/web.png"
theme.mysettingsmenu_icon       = my_dir2 .. "/hammer_screwdriver.png"
-- theme.celestia_icon           = my_dir2 .. "/celestia.png"
-- theme.geogebra_icon           = my_dir2 .. "/geogebra.png"
theme.rosetta_icon              = my_dir2 .. "/rosetta.png"
theme.stellarium_icon           = my_dir2 .. "/stellarium.png"
theme.mathematica_icon          = my_dir2 .. "/Mathematica_Icon.png"
theme.acroread_icon             = my_dir2 .. "/acroread.png"
theme.djview_icon               = my_dir2 .. "/djvulibre-djview4.png"
theme.kchmviewer_icon           = my_dir2 .. "/kchmviewer.png"
theme.leafpad_icon              = my_dir2 .. "/leafpad.png"
theme.librebase_icon            = my_dir2 .. "/libreoffice-base.png"
theme.librecalc_icon            = my_dir2 .. "/libreoffice-calc.png"
theme.libredraw_icon            = my_dir2 .. "/libreoffice-draw.png"
theme.libreimpress_icon         = my_dir2 .. "/libreoffice-impress.png"
theme.libremath_icon            = my_dir2 .. "/libreoffice-math.png"
theme.librewriter_icon          = my_dir2 .. "/libreoffice-writer.png"
theme.gparted_icon              = my_dir2 .. "/gparted.png"
theme.peazip_icon               = my_dir2 .. "/PeaZip.png"
theme.teamviewer_icon           = my_dir2 .. "/teamview.png"
theme.virtualbox_icon           = my_dir2 .. "/virtualbox.png"
theme.unetbootin_icon           = my_dir2 .. "/unetbootin.png"
theme.cups_icon                 = my_dir2 .. "/cupsprinter.png"
theme.java_icon                 = my_dir2 .. "/sun_java.png"
theme.qt_icon                   = my_dir2 .. "/qtassistant.png"
theme.filezilla_icon            = my_dir2 .. "/filezilla.png"
theme.firefox_icon              = my_dir2 .. "/firefox.png"
theme.thunderbird_icon          = my_dir2 .. "/thunderbird.png"
theme.luakit_icon               = my_dir2 .. "/luakit.png"
theme.gajim_icon                = my_dir2 .. "/gajim.png"
theme.skype_icon                = my_dir2 .. "/skype.png"
theme.vidalia_icon              = my_dir2 .. "/vidalia_icon.png"
theme.weechat_icon              = my_dir2 .. "/weechat.png"
theme.meld_icon                 = my_dir2 .. "/meld.png"
theme.umplayer_icon             = my_dir2 .. "/umplayer.png"
theme.qalculate_icon            = my_dir2 .. "/qalculate.png"
theme.wicd_icon                 = my_dir2 .. "/wicd.png"
theme.opera_icon                = my_dir2 .. "/opera.png"
theme.qtcreator_icon            = my_dir2 .. "/qtcreator.png"
theme.florence_icon             = my_dir2 .. "/keyboard.png"
theme.texworks_icon             = my_dir2 .. "/TeXworks.png"
theme.vym_icon                  = my_dir2 .. "/vym.png"
theme.wmsmixer_icon             = my_dir2 .. "/wmsmixer.png"
theme.cherrytree_icon           = my_dir2 .. "/cherrytree.png"
theme.scantailor_icon           = my_dir2 .. "/scantailor.png"
theme.gucharmap_icon            = my_dir2 .. "/gucharmap.png"
theme.sigil_icon                = my_dir2 .. "/sigil.png"
theme.dwb_icon                  = my_dir2 .. "/dwb.png"
theme.qpdfview_icon             = my_dir2 .. "/qpdfview.png"
theme.ghex_icon                 = my_dir2 .. "/ghex.png"
theme.qtlinguist_icon           = my_dir2 .. "/linguist.png"
theme.xfw_icon                  = my_dir2 .. "/xfw.xpm"
theme.free42_icon               = my_dir2 .. "/free42.png"
theme.fontypython_icon          = my_dir2 .. "/fontypython.png"
theme.windows_icon              = my_dir2 .. "/windows.png"
theme.tinymount_icon            = my_dir2 .. "/tinymount.png"
theme.pgadmin3_icon             = my_dir2 .. "/pgadmin3.png"
theme.chromium_icon             = my_dir2 .. "/chromium.png"
theme.dropbox_icon              = my_dir2 .. "/dropbox.png"
theme.gpick_icon                = my_dir2 .. "/gpick.png"
theme.projects_icon             = my_dir2 .. "/projects.png"
theme.qbittorrent_icon          = my_dir2 .. "/qbittorrent.png"
theme.tkdiff_icon               = my_dir2 .. "/tkdiff.png"
theme.kdiff3_icon               = my_dir2 .. "/kdiff3.png"
theme.rubymine_icon             = my_dir2 .. "/rubymine.png"
theme.multiplemonitors_icon     = my_dir2 .. "/multiple_monitors.png"
theme.xnview_icon               = my_dir2 .. "/xnview_2.png"
theme.mystuffmenu_icon          = my_dir2 .. "/creative_suite.png"
theme.assembler_icon            = my_dir2 .. "/assembler_icon.png"
theme.dlang_icon                = my_dir2 .. "/dlang.png"
theme.erlang_icon               = my_dir2 .. "/erlang.png"
theme.databases_icon            = my_dir2 .. "/databases.png"
theme.ruby_icon                 = my_dir2 .. "/ruby.png"
theme.linux_icon                = my_dir2 .. "/linux.png"
theme.html_icon                 = my_dir2 .. "/html.png"
theme.androidmobile_icon        = my_dir2 .. "/android.png"
theme.quiterss_icon             = my_dir2 .. "/quiterss.png"
theme.anki_icon                 = my_dir2 .. "/anki.png"
theme.binclock_bgicon           = my_dir2 .. "/transbinclock.png"
theme.task_icon                 = my_dir2 .. "/task.png"
theme.task_done_icon            = my_dir2 .. "/task_done.png"
theme.project_icon              = my_dir2 .. "/project.png"
theme.udisks_glue               = my_dir2 .. "/usb10.png"
theme.usb                       = my_dir2 .. "/usb.png"
theme.calendar_icon             = my_dir2 .. "/calendar4.png"
theme.cdrom                     = my_dir2 .. "/disc.png"
theme.docsmenu_icon             = my_dir2 .. "/docsmenu.png"
theme.xmind_icon                = my_dir2 .. "/xmind.png"
theme.c_icon                    = my_dir2 .. "/text-x-c.png"
theme.js_icon                   = my_dir2 .. "/text-x-javascript.png"
theme.py_icon                   = my_dir2 .. "/text-x-python.png"
theme.learning_icon             = my_dir2 .. "/add.png"
theme.cpp_icon                  = my_dir2 .. "/text-x-c++.png"
theme.markup_icon               = my_dir2 .. "/text-xml.png" 
-- }}


return theme
