{ config, lib, ... }:
{
  config = lib.mkIf (config.theme == "rose-pine") {
    programs.starship = {
      settings = {
        character = {
          success_symbol = "[❯](foam)";
          error_symbol = "[❯](love)";
          vimcmd_symbol = "[❮](rose)";
        };
        directory = {
          style = "pine";
        };
        git_branch = {
          format = "(fg:foam)[ $symbol $branch ]($style)(fg:gold) ";
          style = "foam";
          symbol = "";
        };
        git_status = {
          disabled = false;
          style = "fg:gold";
          format = "[[($all_status$ahead_behind )](fg:gold)]($style)";
        };
      };
    };
  };
}
