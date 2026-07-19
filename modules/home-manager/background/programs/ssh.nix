{ config, lib, ... }:
{
  options.ssh.settings = lib.mkOption {
    type = lib.types.attrs;
    default = {
      all = {
        addKeysToAgent = "yes";
      };
    };
  };

  config = {
    programs.ssh = {
      enable = true;
      enableDefaultConfig = false;
      settings = config.ssh.settings;
    };
  };
}
