{ config, lib, ... }:
let
  exports = [
    "SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)"
    "KUBE_EDITOR=nvim"
  ];
in
let
  formatted_exports = map (x: "export " + x) exports;
in
{
  config = lib.mkIf (config.programs.fish.enable) {
    programs.fish = {
      shellAliases = {
        os = "openstack";
        k = "kubectl";
        gm = "git checkout $(git rev-parse --abbrev-ref origin/HEAD | string split -r -m1 / $str | tail -1) && git pull origin";
      };
      loginShellInit = "";
      shellInit = ''
        ${builtins.concatStringsSep "\n" formatted_exports}
      '';
      interactiveShellInit = ''
        fish_config theme choose "${config.theme}"
        zoxide init fish | source
      '';
    };

    xdg.configFile."fish-everforest" = {
      enable = true;
      target = "fish/themes/everforest.theme";
      text = ''
        # syntax highlighting variables
        # https://fishshell.com/docs/current/interactive.html#syntax-highlighting-variables
        fish_color_normal d3c6ab
        fish_color_command d699b6
        fish_color_keyword 83c092
        fish_color_quote dbbc7f
        fish_color_redirection 7a8e8e
        fish_color_end 5a6b6b
        fish_color_error e67e80
        fish_color_param e69875
        fish_color_comment 9da9a9
        # fish_color_match --background=brblue
        fish_color_selection --reverse
        # fish_color_history_current --bold
        fish_color_operator d3c6ab
        fish_color_escape 5a6b6b
        fish_color_autosuggestion 9da9a9
        fish_color_cwd e69875
        # fish_color_cwd_root red
        fish_color_user dbbc7f
        fish_color_host 83c092
        fish_color_host_remote d699b6
        fish_color_cancel d3c6ab
        fish_color_search_match --background=dbbc7f
        fish_color_valid_path

        # pager color variables
        # https://fishshell.com/docs/current/interactive.html#pager-color-variables
        fish_pager_color_progress e69875
        fish_pager_color_background --background=2b3a39
        fish_pager_color_prefix 83c092
        fish_pager_color_completion 9da9a9
        fish_pager_color_description 9da9a9
        fish_pager_color_secondary_background
        fish_pager_color_secondary_prefix
        fish_pager_color_secondary_completion
        fish_pager_color_secondary_description
        fish_pager_color_selected_background --background=34454a
        fish_pager_color_selected_prefix 83c092
        fish_pager_color_selected_completion d3c6ab
        fish_pager_color_selected_description d3c6ab

        # custom color variables
        fish_color_subtle 9da9a9
        fish_color_text d3c6ab
        fish_color_love e67e80
        fish_color_gold dbbc7f
        fish_color_rose e69875
        fish_color_pine 5a6b6b
        fish_color_foam 83c092
        fish_color_iris d699b6
        fish_color_base 2b3a39
      '';
    };

    xdg.configFile."fish-rose-pine" = {
      enable = true;
      target = "fish/themes/rose-pine.theme";
      text = ''
        # syntax highlighting variables
        # https://fishshell.com/docs/current/interactive.html#syntax-highlighting-variables
        fish_color_normal e0def4
        fish_color_command c4a7e7
        fish_color_keyword 9ccfd8
        fish_color_quote f6c177
        fish_color_redirection 31748f
        fish_color_end 908caa
        fish_color_error eb6f92
        fish_color_param ebbcba
        fish_color_comment 908caa
        # fish_color_match --background=brblue
        fish_color_selection --reverse
        # fish_color_history_current --bold
        fish_color_operator e0def4
        fish_color_escape 31748f
        fish_color_autosuggestion 908caa
        fish_color_cwd ebbcba
        # fish_color_cwd_root red
        fish_color_user f6c177
        fish_color_host 9ccfd8
        fish_color_host_remote c4a7e7
        fish_color_cancel e0def4
        fish_color_search_match --background=191724
        fish_color_valid_path

        # pager color variables
        # https://fishshell.com/docs/current/interactive.html#pager-color-variables
        fish_pager_color_progress ebbcba
        fish_pager_color_background --background=1f1d2e
        fish_pager_color_prefix 9ccfd8
        fish_pager_color_completion 908caa
        fish_pager_color_description 908caa
        fish_pager_color_secondary_background
        fish_pager_color_secondary_prefix
        fish_pager_color_secondary_completion
        fish_pager_color_secondary_description
        fish_pager_color_selected_background --background=26233a
        fish_pager_color_selected_prefix 9ccfd8
        fish_pager_color_selected_completion e0def4
        fish_pager_color_selected_description e0def4

        # custom color variables
        fish_color_subtle 908caa
        fish_color_text e0def4
        fish_color_love eb6f92
        fish_color_gold f6c177
        fish_color_rose ebbcba
        fish_color_pine 31748f
        fish_color_foam 9ccfd8
        fish_color_iris c4a7e7
        fish_color_base 191724
      '';
    };
  };
}
