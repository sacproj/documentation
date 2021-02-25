---
title: Shortcodes
weight: -8
---

Hugo loves Markdown because of its simple content format, but there are times when Markdown falls short.

Often, content authors are forced to add raw HTML to Markdown content. Hugo authors think this contradicts the beautiful simplicity of Markdown’s syntax. Hugo created **shortcodes** to circumvent these limitations.

A **shortcode** is a simple snippet inside a content file that will be rendered using a predefined template.

{{< toc >}}

## Slide Shortcodes

### slide
Slide shortcode is used to set the title and the slide background.

**Format**
``` test
{{</* slide named-parameters */>}}
```
**Named Parameters**
All named parameters are optional.

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

### menu-title
Defines or overrides the title used in menu

**Format**
```
{{</* menu-title title */>}}
```

**Positional Parameters**
All positional parameters are optional.


#### title
Defines the title used in menu.



## Component Shortcodes
### asciinema
Renders the playback of [Asciinema](https://asciinema.org/) recorded terminal sessions.

To record terminal session, see [Asciinema]({{< ref "misc/asciinema" >}}) page

**Format**
``` text
{{</* asciinema named-parameters */>}}
```

**Named Parameters**
All named parameters are optional except file that is mandatory.

#### src
Defines source URL to load content from

#### autoplay
Enables player to automatically start the session (default to "false")

#### speed
Playback speed (Defaults to 1 (normal speed)
2 means 2x faster.

#### idle-time-limit
Limit terminal inactivity to given number of seconds.

#### start-at
Starts playback at given time in second

#### title
Defines the title above the player

#### poster
Defines the timing in second from where the player previews the frame

#### size
Defines the size of the terminal font (default to "small")
Possible values are following
- `small`
- `medium`
- `big`
- any CSS value (e.g. `15px`, `1.2em`...)


### box
Render boxed text with three distinct box rendering styles: the default, rounded, and waved.

**Format without title**
``` text
{{</* box class >}}
content
{{< /box */}}
```

**Format with title**
``` text
{{</* box class title >}}
content
{{< /box */>}}
```

**Positional Parameters**
All positional parameters are optional.

#### class
Defines CSS class to use (if not set default rendering style is used).

Possible values are following:
- `rounded` used for rounded rendering style
- `waved` used for waved rendering style

#### title
Defines box title.



### chart
Renders a chart with given data. [Chart.js](https://www.chartjs.org/) library is used to render charts.

**Format for inline data**
``` text
{{</* chart named-parameters >}}
<!--
JSON-data
-->
{{< /chart */>}}
```

**Format for external data**
``` text
{{</* chart named-parameters /*/>}}
```

**Named Parameters**
All named parameters are optional except type.

#### type
Defines chart type. Possible values are following:
- `line`
- `bar`
- `horizontalBar`
- `pie`
- `doughnut`
- `radar`
- `polarArea`
- `scatter`

#### src
Defines source URL to load JSON data from
See Chart.js [documentation](https://www.chartjs.org/docs/) and [samples](https://www.chartjs.org/samples/).


### code
Renders code-block with optional syntax highlighting.
If `focus` is set, code block is automatically scrolled such that the lines of code to be focused on is centered.


**Format for inline source**
``` text
{{</* code named-parameters >}}
source
{{< /code */>}}
```

**Format for external source**
``` text
{{</* code named-parameters /*/>}}
```

**Named Parameters**
All named parameters are optional.

#### lang
Defines language for syntax highlighting.
List of supported languages is available at Highlight.js [source code](https://github.com/highlightjs/highlight.js/tree/master/src/languages).

#### src
Defines source URL to load content from.

#### line-numbers
Flags if the line numbers are displayed (default to "false").

#### focus
Defines focused lines in code block as pipe-separated list of line number and/or lines range.
For instance
- "3" to focus line 3
- "1,3,5" to focus lines 1,3 and 5
- "1-5" to focus lines 1 to 5
- "1,7-10" to focus lines 1 and lines 7 to 10



### drawio
Renders draw.io diagram. For more information, read dedicated page: [Draw.io]({{< ref "misc/drawio" >}}) page

**Format**
``` text
{{</* drawio named-parameters */>}}
```

**Named Parameters**
All named parameters are optional.

#### src
Defines source URL to load content from

#### page
Displayed page index (default to 0)

#### layers
Space-separated list of visible layers (e.g. layers="0 1")



### quote
Renders a styled quotation with optional attribution.

**Format without attribution**
``` text
{{</* quote >}}
content
{{< /quote */>}}
```

**Format with attribution**
``` text
{{</* quote attribution >}}
content
{{< /quote */>}}
```

**Positional parameters**
All positional parameters are optional.

#### attribution
Defines quote's attribution


### typed
Types strings using [Typed.js](https://mattboldt.com/demos/typed-js/).

Enter in any string, and watch it type at the speed you've set, backspace what it's typed, and begin a new sentence for however many strings you've set.

**Format**
``` text
{{</* typed named-parameters >}}
sentence 1
sentence 2
sentence 3
...
sentence N
{{< /typed */>}}
```

**Named Parameters**
All named parameters are optional.

#### type-speed
Defines type speed in millisecond (default to "50")

#### start-delay
Defines time before typing in millisecond (default to "0")

#### back-speed
backspacing speed in millisecond (default to "30")

#### smart-backspace
Enables only backspace what doesn't match the previous string (default to "true")

#### shuffle
Enables shuffle the strings (default to "false")

#### back-delay
Defines time before backspacing in millisecond (default to "1000")

#### loop
Enables loop strings (default to "true")

#### loop-count
Defines amount of loops (default to "Infinity")

#### show-cursor
Shows cursor (default to "true")

#### cursor-char
Defines character for cursor (default to "|")


### year
Renders current year.

**Format**
``` text
{{</* year */>}}
```


## Icons Shortcodes

### emoji
Renders Emoji emoticons by their names.

**Format**
``` text
{{</* emoji name */>}}
```

See [Emoji Cheat Sheet](https://www.webfx.com/tools/emoji-cheat-sheet/) for available emojis.


### fab
Renders FontAwesome brand icons by their names.

**Format**
``` text
{{</* fab name */>}}
```

See [Brand icons gallery](https://fontawesome.com/icons?d=gallery&s=brands&m=free) for icon names.


### far
Renders FontAwesome regular icons by their names.

**Format**
``` text
{{</* far name */>}}
```

See [Regular icons gallery](https://fontawesome.com/icons?d=gallery&s=regular&m=free) for icon names.


### fas
Renders FontAwesome solid icons by their names.

**Format**
``` text
{{</* fas name */>}}
```

See [Solid icons gallery]() for icon names.


## Styles Shortcodes
### color
Modifies colour of a span.

**Format**
``` text
{{</* color value */>}}
```

### size
Modifies font size of a span.

**Format**
``` text
{{</* size value */>}}
```


## Format Shortcodes
### div
Applies style to a flow of element by using CSS classes.

**Format**
``` text
{{</* div classes >}}
content
{{< /div */>}}
```

``` text
{{</* div classes fragment-index >}}
content
{{< /div */>}}
```

### span
Applies style to a text by using CSS classes.

**Format**
``` text
{{</* span classes >}}
content
{{< /span */>}}
```

``` text
{{</* span classes fragment-index >}}
content
{{< /span */>}}
```

### ol
Applies style to an ordered list by using CSS classes.

**Format**
``` text
{{</* ol classes >}}
content
{{< /ol */>}}
```

### ul
Applies style to an unordered list by using CSS classes.

**Format**
``` text
{{</* ul classes >}}
content
{{< /ul */>}}
```

### li
Applies style to a list item by using CSS classes.

**Format**
``` text
{{</* li classes >}}content{{< /li */>}}
```

``` text
{{</* li classes fragment-index >}}content{{< /li */>}}
```


## Media Shortcodes
### audio
Play sound when slide is showing. Supported format are OGG, MP3, WAV.

**Example**
``` text
{{</* audio src="url" */>}}
```

### image
Image could be inserted with Markdown syntax, but it can't be resized.

**Format**
{{</* img named-parameters */>}}

**Named Parameters**
All named parameters are optional.

#### src
Defines image URL

#### alt
Defines alternative and hover text

#### width
Defines image width

#### height
Defines image height

#### class
Defines CSS class

#### style
Defines CSS style

#### caption
Defines caption text

#### caption-class
Defines CSS class for caption text

**Example**
``` text
{{</* img src="url" height="600" */>}}
```

### video
Play video when slide is showing.

**Format**
``` text
{{</* video named-parameters */>}}
```

**Named Parameters**
All named parameters are optional.

#### src
Defines video URL

#### autoplay
Enables video autoplay when slide is displayed (default to "true")

#### width
Defines video width

#### height
Defines video height

#### controls
Displays video controls (default to "true")

#### class
Defines CSS class

#### style
Defines CSS style

**Example**
``` text
{{</* video src="url" height="600" */>}}
```


### iframe
Embed a web page within the slide.

**Example**
``` text
<iframe height="600" src="url"></iframe>
```

By adding following on top of the slide, embedded web page can be
- refreshed on slide load
- and periodically refreshed.

In order to refresh only on slide load, set `rate_in_ms` to 0.
``` html
<!-- .slide: data-iframe-refresh="iframe_id[:rate_in_ms]" -->
```

`data-iframe-refresh` parameter consists on the `id` of the iframe `iframe_id` and an optional refresh period `rate_in_ms`.
The default refresh rate is equal to 5000 ms.

**Example**
``` html
<!-- .slide: data-iframe-refresh="foo" -->
<iframe id="foo" height="600" src="url"></iframe>
```
