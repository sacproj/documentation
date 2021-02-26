---
title: Configuration
weight: 10
---

{{< toc >}}

**Slides as Code** configuration is managed by using **Hugo** configuration files in YAML format: i.e. `config.yaml`.

{{< hint "ok" >}}
Every parameters for configuring **Slides as Code** rendering are present in `params` key in `config.yaml`.
{{< /hint >}}

## Configuration Parameters
### Content Parameters
Following parameters are used in HTML header in order to configure relative meta tags.
- `title`
- `author`
- `description`

**Example**
``` yaml
params:
  title: "Slides as Code"
  author: "Stéphane Este-Gracias"
  description: "Code your Presentation Slides"
```

### Reveal.js Parameters
#### geometry
`geometry` key contains following parameters.

- `width`
- `height`
- `margin`
- `scale`
  - `min`
  - `max`

Relative Reveal.js parameters are documented in [Reveal.js documentation page](https://revealjs.com/presentation-size/).

**Example**
``` yaml
params:
  geometry:
    width: 1920
    height: 1080
    margin: 0.0
    scale:
      min: 0.2
      max: 2.0
```

#### options
`options` key contains Reveal.js options in [snake case](https://en.wikipedia.org/wiki/Snake_case).

Relative Reveal.js parameters arec documented in [Reveal.js documentation page](https://revealjs.com/config/).

**Example**
``` yaml
params:
  options:
    progress: false
    slide_number: true
```

### Theme Parameters
`theme` key contains **Slides as Code** theme parameters. See self-explanatory example below.

#### theme.palette
`palette` key contains a key/value pairs that defines CSS colors used by [Classes]({{< ref "reference/css" >}}) that contains `<color>`. Each value contains a list of two CSS colors, the first is used on regular background (light or dark) and the second is used on opposite background (dark or light). 

In following example, `black`, `white`, `darkgray`, `lightgray`, `orange`, `blue`, `gray`, `yellow`, `brown` colors are defined as `palette` colors.

**Example**
``` yaml
params:
  theme:
    # "light" or "dark" mode
    mode:
      light: "#fff"
    font_size:
      default: "40px"
      code: "0.55em"
      chart: 12
    main_font:
      name: "Open Sans, sans-serif"
      css: "Open Sans.css"
    code_font:
      name: "Hack, monospace"
      css: "hack.css"
    heading_font:
      name: "Raleway, sans-serif"
      css: "Raleway.css"
    box_shadow: "0px 5px 1500px rgba(0, 0, 0, 0.15)"
    colors:
      background: "#fff"
      main: "#261036"
      heading: "#f8782f"
      link: "#f8782f"
      link_hover: "lighten( #f8782f, 15% )"
      selection: "#fff"
      selection_background: "#f8782f"
      code: "#fff"
      code_background: "#261036"
      chart:
        palette:
          - "#2f60b5"
          - "#f8782f"
          - "#9399a5"
          - "#fdfc52"
          - "#59271e"
          - "#261036"
          - "#c6c6c6"
          - "#878787"
        fill:
          - "rgba(80, 135, 160, 0.2)"
          - "rgba(238, 117, 35, 0.2)"
          - "rgba(149, 193, 31, 0.2)"
          - "rgba(87, 29, 150, 0.2)"
          - "rgba(159, 107, 80, 0.2)"
          - "rgba(24, 24, 40, 0.2)"
          - "rgba(198, 198, 198, 0.2)"
          - "rgba(135, 135, 135, 0.2)"
        grid: "#c6c6c6"
    palette:
      black:
        - "#261036"
        - "#fff"
      white:
        - "#fff"
        - "#261036"
      darkgray:
        - "#878787"
        - "#fff"
      lightgray:
        - "#c6c6c6"
        - "#261036"
      orange:
        - "#f8782f"
        - "#fff"
      blue:
        - "#2f60b5"
        - "#fff"
      gray:
        - "#9399a5"
        - "#fff"
      yellow:
        - "#fdfc52"
        - "#261036"
      brown:
        - "#59271e"
        - "#fff"
```


## Configuration Merge
**Slides as Code** configuration is processed by merging configuration files starting from selected themes to `config.yaml` in your slides deck.

For example, if you created your slides deck with `sac deck new my-awesome-slides sac/2.0.0 acme/1.0.0` command, **Hugo** will merge configuration files in following order:
- `sac/2.0.0/config.yaml` from `/usr/local/share/sac/themes` directory
- `acme/1.0.0/config.yaml` from `/usr/local/share/sac/themes` directory
- `config.yaml` from your `my-awesome-slides` slides deck directory
