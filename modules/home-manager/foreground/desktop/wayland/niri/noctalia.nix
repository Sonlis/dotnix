{
  config,
  inputs,
  lib,
  ...
}:
let
  theme_override = {
    "everforest" = {
      source = "community";
      community_palette = "Everforest";
    };
    "rose-pine" = {
      source = "builtin";
      builtin = "Rosé Pine";
    };
  };
  theme_mapping = theme_override.${config.theme} or { };
in
{
  imports = [
    inputs.noctalia.homeModules.default
  ];

  programs.noctalia = {
    enable = true;

    settings = {
      location = {
        auto_locate = true;
      };
      theme = lib.recursiveUpdate {
        mode = "auto";
      } theme_mapping;

      wallpaper = {
        enabled = true;
        directory_dark = "/home/${config.user}/Pictures/dark-wallpapers";
        directory_light = "/home/${config.user}/Pictures/light-wallpapers";
        default.path = "/home/${config.user}/Pictures/dark-wallpapers/lake.png";
        automation = {
          enabld = true;
        };
      };
      shell = {
        font_family = "JetBrainsMono NF";
        panel = {
          transparency_mode = "glass";
        };
      };
      bar = {
        main = {
          monitor = {
            DP-1 = {
              margin_ends = 800;
            };
          };
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
          margin_edge = 5;
        };
      };
      widget = {
        spacing = 20;
        session = {
          color = "error";
        };
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
