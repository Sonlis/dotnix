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
        [light]
        fish_color_normal 5c6a72
        fish_color_command df69ba
        fish_color_keyword 35a77c
        fish_color_quote 8da101
        fish_color_redirection 3a94c5
        fish_color_end a6b0a0
        fish_color_error f85552
        fish_color_param f57d26
        fish_color_comment 829181
        fish_color_selection --reverse
        fish_color_operator 5c6a72
        fish_color_escape a6b0a0
        fish_color_autosuggestion 829181
        fish_color_cwd f57d26
        fish_color_user dfa000
        fish_color_host 35a77c
        fish_color_host_remote df69ba
        fish_color_cancel 5c6a72
        fish_color_search_match --background=dfa000
        fish_color_valid_path

        fish_pager_color_progress f57d26
        fish_pager_color_background --background=fffbef
        fish_pager_color_prefix 35a77c
        fish_pager_color_completion 829181
        fish_pager_color_description 829181
        fish_pager_color_secondary_background
        fish_pager_color_secondary_prefix
        fish_pager_color_secondary_completion
        fish_pager_color_secondary_description
        fish_pager_color_selected_background --background=ecf5ed
        fish_pager_color_selected_prefix 35a77c
        fish_pager_color_selected_completion 5c6a72
        fish_pager_color_selected_description 5c6a72

        [dark]
        fish_color_normal d3c6aa
        fish_color_command d699b6
        fish_color_keyword 83c092
        fish_color_quote a7c080
        fish_color_redirection 7fbbb3
        fish_color_end 7a8478
        fish_color_error e67e80
        fish_color_param e69875
        fish_color_comment 9da9a0
        fish_color_selection --reverse
        fish_color_operator d3c6aa
        fish_color_escape 7a8478
        fish_color_autosuggestion 9da9a0
        fish_color_cwd e69875
        fish_color_user dbbc7f
        fish_color_host 83c092
        fish_color_host_remote d699b6
        fish_color_cancel d3c6aa
        fish_color_search_match --background=dbbc7f
        fish_color_valid_path

        fish_pager_color_progress e69875
        fish_pager_color_background --background=272e33
        fish_pager_color_prefix 83c092
        fish_pager_color_completion 9da9a0
        fish_pager_color_description 9da9a0
        fish_pager_color_secondary_background
        fish_pager_color_secondary_prefix
        fish_pager_color_secondary_completion
        fish_pager_color_secondary_description
        fish_pager_color_selected_background --background=384b55
        fish_pager_color_selected_prefix 83c092
        fish_pager_color_selected_completion d3c6aa
        fish_pager_color_selected_description d3c6aa
      '';
    };

    xdg.configFile."fish-rose-pine" = {
      enable = true;
      target = "fish/themes/rose-pine.theme";
      text = ''
        [dark]
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

        [light]
        # syntax highlighting variables
        # https://fishshell.com/docs/current/interactive.html#syntax-highlighting-variables
        fish_color_normal 575279
        fish_color_command 907aa9
        fish_color_keyword 56949f
        fish_color_quote ea9d34
        fish_color_redirection 286983
        fish_color_end 797593
        fish_color_error b4637a
        fish_color_param d7827e
        fish_color_comment 797593
        # fish_color_match --background=brblue
        fish_color_selection --reverse
        # fish_color_history_current --bold
        fish_color_operator 575279
        fish_color_escape 286983
        fish_color_autosuggestion 797593
        fish_color_cwd d7827e
        # fish_color_cwd_root red
        fish_color_user ea9d34
        fish_color_host 56949f
        fish_color_host_remote 907aa9
        fish_color_cancel 575279
        fish_color_search_match --background=faf4ed
        fish_color_valid_path

        # pager color variables
        # https://fishshell.com/docs/current/interactive.html#pager-color-variables
        fish_pager_color_progress d7827e
        fish_pager_color_background --background=fffaf3
        fish_pager_color_prefix 56949f
        fish_pager_color_completion 797593
        fish_pager_color_description 797593
        fish_pager_color_secondary_background
        fish_pager_color_secondary_prefix
        fish_pager_color_secondary_completion
        fish_pager_color_secondary_description
        fish_pager_color_selected_background --background=f2e9e1
        fish_pager_color_selected_prefix 56949f
        fish_pager_color_selected_completion 575279
        fish_pager_color_selected_description 575279

        # custom color variables
        fish_color_subtle 797593
        fish_color_text 575279
        fish_color_love b4637a
        fish_color_gold ea9d34
        fish_color_rose d7827e
        fish_color_pine 286983
        fish_color_foam 56949f
        fish_color_iris 907aa9
        fish_color_base faf4ed
      '';
    };
  };
}
