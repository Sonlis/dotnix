{ ... }:
{
  programs.gnupg.agent = {
    enable = true;
    enableSSHSupport = true;
  };

  # pcscd - PC/SC Smart Card Daemon
  # Not related to gpg per se, but I am using my yubikey to store my GPG keys.
  services = {
    pcscd.enable = true;
  };
}
