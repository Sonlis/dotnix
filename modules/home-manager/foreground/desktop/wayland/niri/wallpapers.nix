{ config, self, ... }:
{
  home.file."Pictures/dark-wallpapers" = {
    source = "${self}/assets/dark-wallpapers/${config.theme}";
  };

  home.file."Pictures/light-wallpapers" = {
    source = "${self}/assets/light-wallpapers/${config.theme}";
  };
}
