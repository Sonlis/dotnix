{ config, ... }:
{
  programs.foot = {
    enable = true;
    server.enable = true;
    settings = {
      main = {
        term = "screen-256color";
        font = "JetBrains Mono NF:size=12:fontfeatures=ss02 calt zero";
        shell = "${config.shell.main}";
        include = "/home/${config.user}/.config/foot/${config.theme}";
      };
      key-bindings = {
        show-urls-launch = "Control+Shift+p";
        show-urls-persistent = "Control+Shift+o";
      };
    };
  };

  xdg.configFile."foot-rose-pine" = {
    enable = true;
    target = "foot/rose-pine";
    text = ''
      # -*- conf -*-
      # Rosé Pine

      [colors-dark]
      alpha=0.9
      background=191724
      foreground=e0def4

      regular0=26233a     # black (Overlay)
      regular1=eb6f92     # red (Love)
      regular2=9ccfd8     # green (Foam)
      regular3=f6c177     # yellow (Gold)
      regular4=31748f     # blue (Pine)
      regular5=c4a7e7     # magenta (Iris)
      regular6=ebbcba     # cyan (Rose)
      regular7=e0def4     # white (Text)

      bright0=47435d      # bright black (lighter Overlay)
      bright1=ff98ba      # bright red (lighter Love)
      bright2=c5f9ff      # bright green (lighter Foam)
      bright3=ffeb9e      # bright yellow (lighter Gold)
      bright4=5b9ab7      # bright blue (lighter Pine)
      bright5=eed0ff      # bright magenta (lighter Iris)
      bright6=ffe5e3      # bright cyan (lighter Rose)
      bright7=fefcff      # bright white (lighter Text)

      flash=f6c177        # yellow (Gold)

      cursor=191724 e0def4
      blur=true
    '';
  };
  xdg.configFile."foot-everforest" = {
    enable = true;
    target = "foot/everforest";
    text = ''
      [colors-dark] 
      alpha=0.90
      background=2b3339
      foreground=d3c6aa
      blur=true


      regular0=4b565c # black
      regular1=e67e80 # red
      regular2=a7c080 # green
      regular3=dbbc7f # yellow
      regular4=7fbbb3 # blue
      regular5=d699b6 # magenta
      regular6=83c092 # cyan
      regular7=d3c6aa # white

      bright0=4b565c # black
      bright1=e67e80 # red
      bright2=a7c080 # green
      bright3=dbbc7f # yellow
      bright4=7fbbb3 # blue
      bright5=d699b6 # magenta
      bright6=83c092 # cyan
      bright7=d3c6aa # white
    '';
  };
}
