{ ... }:
{
  virtualisation = {
    containers = {
      enable = true;
      registries.settings = {
        unqualified-search-registries = [
          "docker.io"
        ];
      };
    };
    podman = {
      enable = true;
      dockerCompat = true;
      defaultNetwork.settings.dns_enabled = true; # Required for containers under podman-compose to be able to talk to each other.
    };
  };
}
