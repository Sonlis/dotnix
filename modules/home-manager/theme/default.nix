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
    ./foot.nix
  ];

  options = {
    theme = lib.mkOption {
      default = "";
      description = "Which color scheme to use";
    };
    colors = lib.mkOption {
    };
  };

  config = {
    colors = themes.${config.theme};
  };
}
