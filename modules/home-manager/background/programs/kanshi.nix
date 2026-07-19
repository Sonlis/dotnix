{ ... }:
{
  services.kanshi = {
    enable = true;
    settings = [
      {
        profile = {
          name = "Laptop with screen connected";
          outputs = [
            {
              criteria = "DP-3";
              status = "enable";
              position = "0,0";
            }
            {
              criteria = "eDP-1";
              status = "disable";
            }
          ];
        };
      }
      {
        profile = {
          name = "Just laptop";
          outputs = [
            {
              criteria = "eDP-1";
              status = "enable";
              position = "0,0";
            }
          ];
        };
      }
    ];
  };
}
