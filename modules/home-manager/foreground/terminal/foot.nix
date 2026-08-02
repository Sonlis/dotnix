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
        color-theme-toggle = "Control+Shift+t";
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

      [colors-light]
      background=faf4ed
      foreground=575279
      alpha=0.9
      blur=true

      regular0=f2e9e1     # black (Overlay)
      regular1=b4637a     # red (Love)
      regular2=56949f     # green (Foam)
      regular3=ea9d34     # yellow (Gold)
      regular4=286983     # blue (Pine)
      regular5=907aa9     # magenta (Iris)
      regular6=d7827e     # cyan (Rose)
      regular7=575279     # white (Text)

      bright0=fffdf5      # bright black (lighter Overlay)
      bright1=df8aa0      # bright red (lighter Love)
      bright2=7ebcc7      # bright green (lighter Foam)
      bright3=ffc55c      # bright yellow (lighter Gold)
      bright4=538faa      # bright blue (lighter Pine)
      bright5=b8a1d2      # bright magenta (lighter Iris)
      bright6=ffaaa5      # bright cyan (lighter Rose)
      bright7=7c76a0      # bright white (lighter Text)

      flash=ea9d34        # yellow (Gold)

      cursor=faf4ed 575279
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

      [colors-light] 
      alpha=0.90
      background=fff9e8
      foreground=5c6a72
      blur=true

      regular0=5c6a72 # black
      regular1=f85552 # red
      regular2=8da101 # green
      regular3=dfa000 # yellow
      regular4=3a94c5 # blue
      regular5=df69ba # magenta
      regular6=35a77c # cyan
      regular7=dfddc8 # white

      bright0=5c6a72 # black
      bright1=f85552 # red
      bright2=8da101 # green
      bright3=dfa000 # yellow
      bright4=3a94c5 # blue
      bright5=df69ba # magenta
      bright6=35a77c # cyan
      bright7=dfddc8 # white
    '';
  };
}
