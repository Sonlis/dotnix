{ ... }: {
  xdg.configFile."everforest-niri-theme" = {
    text = ''
        layout {
          focus-ring {
              on
              width 2
              active-color "#e69875"
              inactive-color "#191724"
              urgent-color "#31748f"
          }
      }
    '';
    enable = true;
    target = "niri/themes/everforest.kdl";
  };
}
