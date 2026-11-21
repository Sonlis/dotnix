{ config, ... }:
{
  xdg.configFile."opencode-theme" = {
    enable = true;
    target = "opencode/cli.json";
    text = ''
      {
        "theme": {
          "name": "${config.theme}"
        }
      }
    '';
  };
}
