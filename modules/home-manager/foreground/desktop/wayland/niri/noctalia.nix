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
          background_opacity = 0.0;
          capsule = true;
          capsule_thickness = 1.0;
          margin_ends = 5;
        };
      };
      widget = {
        display = "none";
      };
      idle = {
        behavior = {
          lock = {
            timeout = 300;
            action = "lock";
            enabled = true;
          };
          screen_off = {
            timeout = 600;
            action = "screen_off";
            enabled = true;
          };
          suspend = {
            timeout = 900;
            action = "lock_and_suspend";
            enabled = true;
          };
        };
      };
    };
  };
}
