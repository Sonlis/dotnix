{ ... }: {
  xdg.configFile."nord-niri" = {
    text = ''
        layout {
          focus-ring {
              on
              width 2
              active-color "#d8dee9"
              inactive-color "#4c566a"
              urgent-color "#bf616a"
          }
      }
    '';
    enable = true;
    target = "niri/themes/nord.kdl";
  };
}
