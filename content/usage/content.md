---
title: Content Source
weight: -19
---

{{< toc >}}

## Content file
A content file is composed by 2 main components:

- Front matter using YAML format delimited by `---`.
- Content using [Markdown]({{< ref "usage/markdown" >}}), [Shortcodes]({{< ref "reference/shortcodes" >}}) and [CSS classes]({{< ref "reference/css" >}}) to describe the content.

## Content Format
Hugo ❤️ Markdown (see [Markdown]({{< ref "usage/markdown" >}}) page), but there are times when Markdown falls short.

Instead of writing raw HTML, Hugo created Shortcodes.

A Shortcode is a simple snippet inside a content file
that will be rendered using a predefined template (see [Shortcodes]({{< ref "reference/shortcodes" >}}) page).

```
{{</* shortcode parameters >}}
content
{{< shortcode */>}}
```

{{< hint "info" >}}
**VS Code snippets** are available in order to ease the use of shortcodes (see [Snippets]({{< ref "reference/snippets" >}}) page).
{{< /hint >}}

## Content Source and Rendering
Each content file should contain `markup: html`.
The command `sac content new` is taking care of this for you.

``` text
---
weight: 10
markup: "html"
---
Markdown with Shortcodes content
```

`weight` in content file's front-matter is used to sort content files when concatenating them.
The command `sac content new` is incrementing its value by `10` at every execution.

## Slides delimiters
**Reveal.js** supports slides organization in 2D.
During deck presentation, type `O` key to show slides organization.
Regarding navigation, **Slides as Code** disables 2D navigation and prefers to use `linear` navigation through all slides (both horizontal and vertical).

Multiple slides could be put into a same content file.

`---` or `------` are the delimiters to separate each slide within the same content file.

- 3 dashes (`---`) to create a new slide on the right side (horizontal slides).
- 6 dashes (`------`) to create a new slide on the below side (vertical slides).

When building slides deck, content files are concatenated with horizontal separation.

**Examples**

Following example creates horizontal slides

``` markdown
---
weight: <level>
markup: "html"
---
Slide 1 content

---
Slide 2 content

---
Slide 3 content
```

Following example creates vertical slides
``` markdown
---
weight: <level>
markup: "html"
---
Slide 1 content

------
Slide 1.1 content

------
Slide 1.2 content
```

## Speaker Notes
**Reveal.js** comes with a speaker notes plugin which can be used to present per-slide notes in a separate browser window.
The notes window also gives you a preview of the next upcoming slide so it may be helpful even if you haven't written any notes.
Press the `S` key on your keyboard to open the notes window.

A speaker timer starts as soon as the speaker view is opened. You can reset it to 00:00:00 at any time by simply clicking/tapping on it.

Notes are defined by appending "Note:" segment to a slide content followed by Markdown text.

**Example**
Following example creates slides with notes
``` markdown
---
weight: <level>
markup: "html"
---
Slide 1 content

Note:
Slide 1 Notes

------
Slide 1.1 content

Note:
Slide 1.1 Notes

------
Slide 1.2 content

Note:
Slide 1.2 Notes
```
