{ ... }: {
  xdg.configFile."rose-pine-niri-theme" = {
    text = ''
        layout {
          focus-ring {
              on
              width 2
              active-color "#ebbcba"
              inactive-color "#191724"
              urgent-color "#31748f"
          }
      }
    '';
    enable = true;
    target = "niri/themes/rose-pine.kdl";
  };
}
