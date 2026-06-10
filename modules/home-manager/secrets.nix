{
  config,
  inputs,
  ...
}:
{
  # Configuration via home.nix
  imports = [
    inputs.sops-nix.homeManagerModules.sops
  ];

  sops = {
    gnupg.home = "${config.home.homeDirectory}.gnupg";
    secrets = {
      #test = {
      #path = "${config.home.homeDirectory}/.config/test.txt";
      #sopsFile = ./secrets.sops.yaml;
      #mode = "600";
      #};
    };
  };
}
