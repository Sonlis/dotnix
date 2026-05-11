{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    acl
    file
    foot
    git
    iperf3
    lazygit
    lsof
    dnsutils
    netbird
    uwsm
    vim
    tcpdump
    wget
    wireguard-tools
    wireshark
    woeusb
    woeusb-ng
  ];
  services = {
    udev = {
      packages = with pkgs; [
        yubikey-personalization
      ];
    };
  };
}
