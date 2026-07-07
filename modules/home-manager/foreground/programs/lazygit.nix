{ config, lib, ... }:

let
  rose-pine = {
    gui.theme = {
      activeBorderColor = [
        "#31748f"
        "bold"
      ];

      inactiveBorderColor = [
        "#6e6a86"
      ];

      searchingActiveBorderColor = [
        "#ebbcba"
        "bold"
      ];

      optionsTextColor = [
        "#9ccfd8"
      ];

      selectedLineBgColor = [
        "#31748f"
      ];

      inactiveViewSelectedLineBgColor = [
        "#26233a"
        "bold"
      ];

      cherryPickedCommitFgColor = [
        "#1f1d2e"
      ];

      cherryPickedCommitBgColor = [
        "#ebbcba"
      ];

      markedBaseCommitFgColor = [
        "#9ccfd8"
      ];

      markedBaseCommitBgColor = [
        "#f6c177"
      ];

      unstagedChangesColor = [
        "#eb6f92"
      ];

      defaultFgColor = [
        "#e0def4"
      ];
    };
  };

  themes = {
    rose-pine = rose-pine;
  };

  activeTheme = themes.${config.theme} or null;
in
{
  programs.lazygit = {
    enable = true;
    settings = lib.mkIf (activeTheme != null) {
      gui.theme = activeTheme.gui.theme;
    };
  };
}
