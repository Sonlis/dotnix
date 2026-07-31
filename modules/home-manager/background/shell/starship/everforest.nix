{ config, lib, ... }:
{
  config = lib.mkIf (config.theme == "everforest") {
    programs.starship = {
      settings = {
        character = {
          success_symbol = "[❯](green)";
          error_symbol = "[❯](red)";
          vimcmd_symbol = "[❮](orange)";
        };
        directory = {
          style = "orange";
        };
        git_branch = {
          format = "(fg:yellow)[ $symbol $branch ]($style)(fg:yellow) ";
          style = "purple";
          symbol = "";
        };
        git_status = {
          disabled = false;
          style = "fg:orange";
          format = "[[($all_status$ahead_behind )](fg:orange)]($style)";
        };
      };
    };
  };
}
