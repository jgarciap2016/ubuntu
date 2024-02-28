#
#   BIT @ BIT COMPUTADORAS
#   
#   JAVIER GARCÍA PÉREZ
#
#   SCRIPT DE CONFIGURACIÓN DE LINUX UBUNTU
#



[code]

#———————————————
# TINT CONFIG FILE
#———————————————

#———————————————
# PANEL
#———————————————
panel_mode = multi_monitor
panel_monitor = 1
panel_position = bottom center
panel_size = 700 28
panel_margin = 15 5
panel_padding = 9 3
font_shadow = 0

#———————————————
# PANEL BACKGROUND AND BORDER
#———————————————
panel_rounded = 6
panel_border_width = 1
panel_background_color = #000000 60
panel_border_color = #ffffff 18

#———————————————
# TASKS
#———————————————
task_text_centered = 1
task_width = 200
task_margin = 2
task_padding = 6
task_icon_size = 15
task_font = sans 9
task_font_color = #ffffff 70
task_active_font_color = #ffffff 85

#———————————————
# TASK BACKGROUND AND BORDER
#———————————————
task_rounded = 5
task_background_color = #393939 30
task_active_background_color = #ffffff 50
task_border_width = 0
task_border_color = #ffffff 18
task_active_border_color = #ffffff 70

#———————————————
# CLOCK
#———————————————
time1_format = %H:%M
time1_font = sans 8
time2_format = %A %d %B
time2_font = sans 6
clock_font_color = #ffffff 76

#———————————————
# MOUSE ACTION ON TASK
#———————————————
mouse_middle = none
mouse_right = close
mouse_scroll_up = toggle
mouse_scroll_down = iconify
[/code] 

[code]

# Muestra en la pantalla el escritorio
exec pcmanfm --desktop &

# Inicia el menú dock
exec cairo-dock &

# Sombra
exec xcompmgr &

# Barra de herramientas
exec tinit2 &

# Visor de sistema
exec conky &
[/code]


