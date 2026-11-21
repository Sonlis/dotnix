{ config, lib, ... }:
{
  config = lib.mkIf (config.theme == "nord") {
    programs.starship = {
      settings = {
        character = {
          success_symbol = "[❯](nord14)";
          error_symbol = "[❯](nord11)";
          vimcmd_symbol = "[❮](nord15)";
        };
        directory = {
          style = "nord8";
        };
        git_branch = {
          format = "(fg:nord7)[ $symbol $branch ]($style)(fg:nord10) ";
          style = "nord9";
          symbol = "";
        };
        git_status = {
          disabled = false;
          style = "fg:nord15";
          format = "[[($all_status$ahead_behind )](fg:nord15)]($style)";
        };
      };
    };
  };
}
