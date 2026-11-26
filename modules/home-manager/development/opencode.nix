{ ... }:
{
  programs.opencode = {
    # declarative config goes to home-manager.json, leaving opencode.json writable by opencode itself
    mutableSettings = true;
    skills = ./opencode-skills;
    settings.plugins = [ "@dietrichgebert/ponytail" ];
  };
}
