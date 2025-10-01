{ config, lib, ... }:
{
   config = lib.mkIf (config.theme == "catppuccin_mocha") {
        programs.starship = {
            settings = {
                character = {
                    success_symbol = "[❯](green)";
                    error_symbol = "[❯](red)";
                    vimcmd_symbol = "[❮](subtext1)";
                };
                directory = {
                    style = "lavender";
                };
                  git_branch = {
                    format = "(fg:mauve)[ $symbol $branch ]($style)(fg:yellow) ";
                    style = "mauve";
                    symbol = "";
                  };
              git_status = {
                    disabled = false;
                    style = "fg:yellow";
                    format = "[[($all_status$ahead_behind )](fg:yellow)]($style)";
              };
            };
        };
    };
}
