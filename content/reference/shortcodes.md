---
title: Shortcodes
weight: -8
---

Hugo loves Markdown because of its simple content format, but there are times when Markdown falls short.

Often, content authors are forced to add raw HTML to Markdown content. Hugo authors think this contradicts the beautiful simplicity of Markdown’s syntax. Hugo created **shortcodes** to circumvent these limitations.

A **shortcode** is a simple snippet inside a part file that will be rendered using a predefined template.

{{< toc >}}

## Common Shortcodes

### slide
Slide shortcode is used to set the title and the slide background.

**Format**
``` test
{{</* slide named-parameters */>}}
```

#### menu-title
Defines the title used in menu (default to first heading in the slide). Menu appears when clicking 'M' button when presenting slides.

#### iframe
Defines overlay iframe URL.

#### bg
Defines background with CSS function (e.g. bg="linear-gradient(#571d96, #398ccb)")

#### bg-color
Defines background colour with one of palette color (see [Configuration]({{< ref "reference/configuration" >}}) page) or CSS value.

#### bg-image
Defines background image URL. Animated GIFs restart when the slide opens.

#### bg-video
A single video URL, or a comma separated list of video URL.

#### bg-video-loop
Flags if the video should play repeatedly (default to "false").

#### bg-video-muted
Flags if the audio should be muted (default to "false").

#### bg-iframe
Defines background iframe URL.

#### bg-size
Defines background size with CSS value (default to "cover").

#### bg-position
Defines background position with CSS value (default to "center").

#### bg-repeat
Defines background repeat with CSS value (default to "no-repeat").

#### bg-opacity
Opacity of the background video on a 0 to 1 scale.
0 is transparent and 1 is fully opaque (default to "1").
