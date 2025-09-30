{
  config,
  lib,
  self,
  ...
}:
let
  themes = import "${self}/themes/colors.nix" { };
in
{
  imports = [
    ./hypr
    #./firefox.nix
    ./foot.nix
  ];

  options = {
    theme = lib.mkOption {
        default = "rose-pine";
        description = "Which color scheme to use";
    };
    colors = lib.mkOption {
    };
  };

  config = {
    colors = themes.${config.theme};
  };
}
