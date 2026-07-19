{ ... }:
{
  services.kanshi = {
    enable = true;
    settings = {
      no_laptop_screen_when_connected = {
        name = "no_laptop_screen_when_connected";
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
      just_laptop = {
        name = "just_laptopt";
        outputs = [
          {
            criteria = "eDP-1";
            status = "enable";
            position = "0,0";
          }
        ];
      };
    };
  };
}
