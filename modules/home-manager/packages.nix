{ pkgs, ... }:
{
  # Nix packages to install to $HOME
  #
  # Search for packages here: https://search.nixos.org/packages
  config = {
    home.packages = with pkgs; [
      # Unix tools
      fzf
      gnumake
      gnupg
      tree
      ripgrep
      unzip
      zip

      # Screenshot
      grim
      slurp

      # Kube
      kubectl
      kubie

      # Tools
      libpcap # Lib to process pcap packets
      k9s
      iftop
      iotop
      fluxcd
      vault
      kubernetes-helm
      fd # find alternative, mostly used by neovim-telescope
      flamegraph
      glab # gitlab cli
      gonzo # Log analysis
      openssl
      xh # Friendly curl
      zoxide # cd alternative
      networkmanagerapplet
      openstackclient
      prek # pre-commit alternative
      thunderbird
      tree-sitter
      wl-clipboard
      yubikey-personalization
      nono # Sandboxing for coding agents
      pi-coding-agent
      ipmitool
      crane # Tool to interact with container images
      obsidian

      # Dev
      awscli2
      go
      lua
      luarocks
      terraform
      nodejs_24
      llvmPackages_21.libcxxClang
      libclang
      yarn
      podman-compose

      # Dev python
      ruff
      ty
      uv

      signal-desktop
      discord
      qimgv # Image viewer
      ytmdesktop
    ];

    # Programs natively supported by home-manager.
    # They can be configured in `programs.*` instead of using home.packages.
    programs = {
      jq.enable = true;
    };
  };
}
