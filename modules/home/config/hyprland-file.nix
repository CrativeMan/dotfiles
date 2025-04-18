{ ... }:

{
  home.file.".config/hypr/hyprland.conf".text = ''
    monitor=,highres,auto, 1

    env = XCURSOR_SIZE,24

    input {
        kb_layout = de
        kb_variant =
        kb_model =
        kb_options =
        kb_rules =

        follow_mouse = 1

        touchpad {
            natural_scroll = no
        }

        sensitivity = -0.5 # -1.0 - 1.0, 0 means no modification.
    }

    general {
        gaps_in = 3
        gaps_out = 4
        border_size = 3
        col.active_border = rgba(aa5526ff)
        col.inactive_border = rgba(4f4f4fff)

        layout = master

        allow_tearing = false
    }

    decoration {
        rounding = 5

        blur {
            enabled = true
            size = 3
            passes = 1
        }

        active_opacity = 0.96f
        inactive_opacity = 0.85f
        fullscreen_opacity = 1f

        drop_shadow = yes
        shadow_range = 5
        shadow_render_power = 3
        col.shadow = rgba(1a1a1aee)
    }

    animations {
        enabled = yes

        bezier = myBezier, 0.05, 0.9, 0.1, 1.05

        animation = windows, 1, 7, myBezier
        animation = windowsOut, 1, 7, default, popin 80%
        animation = border, 1, 10, default
        animation = borderangle, 1, 8, default
        animation = fade, 1, 7, default
        animation = workspaces, 1, 6, default
    }

    dwindle {
        pseudotile = yes # master switch for pseudotiling. Enabling is bound to mainMod + P in the keybinds section below
        preserve_split = yes # you probably want this
    }

    master {
        # See https://wiki.hyprland.org/Configuring/Master-Layout/ for more
    }

    gestures {
        # See https://wiki.hyprland.org/Configuring/Variables/ for more
        workspace_swipe = off
    }

    misc {
        # See https://wiki.hyprland.org/Configuring/Variables/ for more
        force_default_wallpaper = -1 # Set to 0 to disable the anime mascot wallpapers
    }

    $mainMod = SUPER

    # custom bindings
    bind = $mainMod, S, exec, rofi -show drun -show-icons

    # Moving windows
    bind = $mainMod SHIFT, left, swapwindow, l
    bind = $mainMod SHIFT, right, swapwindow, r
    bind = $mainMod SHIFT, up, swapwindow, u
    bind = $mainMod SHIFT, down, swapwindow, d

    # Window Resizing 			                   X   Y
    bind = $mainMod CTRL, left, resizeactive,  -60 0
    bind = $mainMod CTRL, right, resizeactive,  60 0
    bind = $mainMod CTRL, up, resizeactive,     0 -60
    bind = $mainMod CTRL, down, resizeactive,   0  60

    # Screenshot
    bind = $mainMod, P, exec, grim -g "$(slurp)"

    # Example binds, see https://wiki.hyprland.org/Configuring/Binds/ for more
    bind = $mainMod, Q, exec, kitty
    bind = $mainMod, C, killactive,
    bind = $mainMod, M, exit,
    bind = $mainMod, F, exec, nautilus
    bind = $mainMod, V, togglefloating,
    # bind = $mainMod, P, pseudo, # dwindle
    # bind = $mainMod, J, togglesplit, # dwindle

    # Move focus with mainMod + arrow keys
    bind = $mainMod, left, movefocus, l
    bind = $mainMod, right, movefocus, r
    bind = $mainMod, up, movefocus, u
    bind = $mainMod, down, movefocus, d

    # Switch workspaces with mainMod + [0-9]
    bind = $mainMod, 1, workspace, 1
    bind = $mainMod, 2, workspace, 2
    bind = $mainMod, 3, workspace, 3
    bind = $mainMod, 4, workspace, 4
    bind = $mainMod, 5, workspace, 5
    bind = $mainMod, 6, workspace, 6
    bind = $mainMod, 7, workspace, 7
    bind = $mainMod, 8, workspace, 8
    bind = $mainMod, 9, workspace, 9
    bind = $mainMod, 0, workspace, 10

    # Move active window to a workspace with mainMod + SHIFT + [0-9]
    bind = $mainMod SHIFT, 1, movetoworkspace, 1
    bind = $mainMod SHIFT, 2, movetoworkspace, 2
    bind = $mainMod SHIFT, 3, movetoworkspace, 3
    bind = $mainMod SHIFT, 4, movetoworkspace, 4
    bind = $mainMod SHIFT, 5, movetoworkspace, 5
    bind = $mainMod SHIFT, 6, movetoworkspace, 6
    bind = $mainMod SHIFT, 7, movetoworkspace, 7
    bind = $mainMod SHIFT, 8, movetoworkspace, 8
    bind = $mainMod SHIFT, 9, movetoworkspace, 9
    bind = $mainMod SHIFT, 0, movetoworkspace, 10

    # Example special workspace (scratchpad)
    bind = $mainMod, S, togglespecialworkspace, magic
    bind = $mainMod SHIFT, S, movetoworkspace, special:magic

    # Scroll through existing workspaces with mainMod + scroll
    bind = $mainMod, mouse_down, workspace, e+1
    bind = $mainMod, mouse_up, workspace, e-1

    # Move/resize windows with mainMod + LMB/RMB and dragging
    bindm = $mainMod, mouse:272, movewindow
    bindm = $mainMod, mouse:273, resizewindow

    windowrulev2 = opacity 0.5 override 0.5 override 0.5 override, class:(kitty), title:(kitty)

    exec-once = bash ~/.config/hypr/start.sh
    source = ~/.config/hypr/monitors.conf
    source = ~/.config/hypr/workspaces.conf
  '';
}
