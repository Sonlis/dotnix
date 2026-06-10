{ config, ... }:
{
  xdg.configFile."k9s-config" = {
    enable = true;
    target = "k9s/config.yaml";
    text = ''
      k9s:
        liveViewAutoRefresh: false
        gpuVendors: {}
        screenDumpDir: /home/${config.user}/.local/state/k9s/screen-dumps
        refreshRate: 2
        apiServerTimeout: 2m0s
        maxConnRetry: 5
        readOnly: false
        noExitOnCtrlC: false
        portForwardAddress: localhost
        ui:
          skin: ${config.theme}
          enableMouse: false
          headless: false
          logoless: false
          crumbsless: false
          splashless: false
          reactive: false
          noIcons: false
          invert: false
          defaultsToFullScreen: false
          useFullGVRTitle: false
        skipLatestRevCheck: false
        disablePodCounting: false
        shellPod:
          image: busybox:1.37.0
          namespace: default
          limits:
            cpu: 100m
            memory: 100Mi
        imageScans:
          enable: false
          exclusions:
            namespaces: []
            labels: {}
        logger:
          tail: 100
          buffer: 5000
          sinceSeconds: -1
          textWrap: false
          disableAutoscroll: false
          columnLock: false
          showTime: false
        thresholds:
          cpu:
            critical: 90
            warn: 70
          memory:
            critical: 90
            warn: 70
        defaultView: ""
    '';
  };

  xdg.configFile."k9s-rose-pine-skin" = {
    enable = true;
    target = "k9s/skins/rose-pine.yaml";
    text = ''
      k9s:
        body:
          fgColor: '#e0def4'
          bgColor: '#191724'
          logoColor: '#c4a7e7'
        prompt:
          fgColor: '#e0def4'
          bgColor: '#1f1d2e'
          suggestColor: '#9ccfd8'
        help:
          fgColor: '#e0def4'
          bgColor: '#191724'
          sectionColor: '#31748f'
          keyColor: '#9ccfd8'
          numKeyColor: '#ebbcba'
        frame:
          title:
            fgColor: '#31748f'
            bgColor: '#191724'
            highlightColor: '#c4a7e7'
            counterColor: '#f6c177'
            filterColor: '#31748f'
          border:
            fgColor: '#c4a7e7'
            focusColor: '#9ccfd8'
          menu:
            fgColor: '#e0def4'
            keyColor: '#9ccfd8'
            numKeyColor: '#ebbcba'
          crumbs:
            fgColor: '#191724'
            bgColor: '#c4a7e7'
            activeColor: '#ebbcba'
          status:
            newColor: '#9ccfd8'
            modifyColor: '#9ccfd8'
            addColor: '#31748f'
            pendingColor: '#eb6f92'
            errorColor: '#eb6f92'
            highlightColor: '#ebbcba'
            killColor: '#c4a7e7'
            completedColor: '#908caa'
        info:
          fgColor: '#eb6f92'
          sectionColor: '#e0def4'
        views:
          table:
            fgColor: '#e0def4'
            bgColor: '#191724'
            cursorFgColor: '#1f1d2e'
            cursorBgColor: '#191724'
            markColor: '#c4a7e7'
            header:
              fgColor: '#f6c177'
              bgColor: '#191724'
              sorterColor: '#ebbcba'
          xray:
            fgColor: '#e0def4'
            bgColor: '#191724'
            cursorColor: '#524f67'
            cursorTextColor: '#191724'
            graphicColor: '#c4a7e7'
          charts:
            bgColor: '#191724'
            chartBgColor: '#191724'
            dialBgColor: '#191724'
            defaultDialColors:
              - '#31748f'
              - '#eb6f92'
            defaultChartColors:
              - '#31748f'
              - '#eb6f92'
            resourceColors:
              cpu:
                - '#c4a7e7'
                - '#9ccfd8'
              mem:
                - '#f6c177'
                - '#eb6f92'
          yaml:
            keyColor: '#9ccfd8'
            valueColor: '#e0def4'
            colonColor: '#908caa'
          logs:
            fgColor: '#e0def4'
            bgColor: '#191724'
            indicator:
              fgColor: '#9ccfd8'
              bgColor: '#191724'
              toggleOnColor: '#31748f'
              toggleOffColor: '#908caa'
        dialog:
          fgColor: '#f6c177'
          bgColor: '#6e6a86'
          buttonFgColor: '#191724'
          buttonBgColor: '#e0def4'
          buttonFocusFgColor: '#191724'
          buttonFocusBgColor: '#c4a7e7'
          labelFgColor: '#ebbcba'
          fieldFgColor: '#e0def4'
    '';
  };
}
