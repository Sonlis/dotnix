{ lib, config, ... }:
{

  options.git = {
    users = lib.mkOption {
      type = lib.types.attrsOf (
        lib.types.submodule (
          { ... }: {
            options = {
              directories = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ ];
                example = [
                  "~/work"
                  "~/clients/acme"
                ];
              };

              name = lib.mkOption {
                type = lib.types.str;
              };

              email = lib.mkOption {
                type = lib.types.str;
              };
            };
          }
        )
      );
      default = { };
    };
    signingKey = lib.mkOption {
      type = lib.types.str;
      default = "";
    };
  };

  config = {
    programs.git = {
      enable = true;
      signing = {
        key = config.git.signingKey;
        signByDefault = true;
      };
      includes = lib.flatten (
        lib.mapAttrsToList (
          _: user:
          map (directory: {
            condition = "gitdir:${directory}/";
            contents.user = {
              inherit (user) name email;
            };
          }) user.directories
        ) config.git.users
      );
      settings = {
        safe.directory = [ "/etc/nixos" ];
        pull.rebase = true;
        gpg = {
          format = "ssh";
        };
      };
    };
  };
}
