{ config, inputs, ... }:
{
  imports = [
    inputs.noctalia.homeModules.default
  ];

  programs.noctalia = {
    enable = true;

    settings = {
      theme = {
        mode = "dark";
        source = "builtin";
        builtin = "Rosé Pine";
      };

      wallpaper = {
        enabled = true;
        default.path = "/home/${config.user}/Pictures/dark-wallpapers/jellyfish-rose-pine.jpg";
      };
      shell = {
        font_family = "JetBrainsMono NF";
        panel = {
          transparency_mode = "glass";
        };
      };
      bar = {
        main = {
          start = [ "workspaces" ];
          center = [
            "clock"
            "media"
          ];
          end = [
            "network"
            "notifications"
            "battery"
            "session"
          ];
        };
      };
    };
  };
}
