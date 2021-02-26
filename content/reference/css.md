---
title: Classes
weight: -7
---

CSS classes could be applied
- to element by setting parameter in shortcode (if exists)
- to paragraph by using special comment after the paragraph `<!-- .element class="classes" -->`

In following classes, `<color>` variable is equal to one of palette color (see [Configuration]({{< ref "reference/configuration" >}}) page).

{{< toc >}}

## Fragments
Fragments are used to highlight individual elements on a slide. Every element with the class fragment will be stepped through before moving on to the next slide.

The default fragment style is to start out invisible and fade in.

The default style can be changed by appending a different class to the fragment.

Possible styles are following

- `grow` to grow
- `shrink` to shrink
- `fade-out` to fade-out
- `fade-up` to fade from up
- `fade-down` to fade from down
- `fade-left` to fade from left
- `fade-right` to fade from right
- `fade-in-then-out` to fades in, then out when we move to the next step
- `fade-in-then-semi-out` to fades in, then obfuscate when we move to the next step
- `highlight-red` to highlight in red
- `highlight-green` to highlight in green
- `highlight-blue` to highlight in blue
- `highlight-current-red` to highlight in red only when current fragment
- `highlight-current-green` to highlight in green only when current fragment
- `highlight-current-blue` to highlight in blue only when current fragment
- `fragment-text-<color>` to text in `<color>`
- `fragment-text-highlight-<color>` to text highlight in `<color> `
- `fragment-bg-<color>` to background in `<color> `
- `fragment-text-<style>` to text in `<style>`
- `fragment-current-text-<color>` to text in `<color>` only when current fragment
- `fragment-current-text-highlight-<color>` to text highlight in `<color>` only when current fragment
- `fragment-current-bg-<color>` to background in `<color>` only when current fragment
- `fragment-current-text-<style>` to text in `<style>` only when current fragment

Multiple fragments can be applied to the same element sequentially by wrapping it.

The display order of fragments can be controlled by

- using fragment index in `div` / `span` / `li` shortcodes
- using the `data-fragment-index` attribute in element attribute.<br>e.g. `<!-- .element class="fragment" data-fragment-index="1" -->`

## Styles

### bg-\<color\>
Set background `<color>`.

### img-\<style\>
Style the image with possible `<style>` values:

- `middle` to vertical align with middle

### rounded
Use rounded borders with `text-highlight-<color>` class.

### table-zebra
Table rows are rendered using alternating stripped backgrounds

**Example**
``` markdown
|x|y|z|
|-|-|-|
|1|2|3|
|4|5|6|
|7|8|9|
|A|B|C|

<!-- .element class="table-zebra" -->
```
Empty line is mandatory between table and `.element` attribute.

### text-\<style\>
Style the text with possible `<style>` values:

- Font Family
  - `main` to use default font
  - `code` to use monospace font
- Alignment
  - `left` to align to the left
  - `right` to align to the right
  - `center` to align in the center
- Font Style
  - `lighter` to use lighter font
  - `normal` to use normal font
  - `bold` to use bold font
  - `italic` to use italic font
  - `overstrike` to use overstrike font
  - `uppercase` to uppercase text
  - `lowercase` to uppercase text
  - `capitalize` to capitalize text
  - `smallcaps` to smallcaps text
- Font Size
  - `01` to `50` to size the font in `em`

### text-\<color\>
Apply `<color>` to text.

### text-highlight-\<color>\
Highlight text with `<color>`.


## Layout

### columns / column / col-\<percent> / col-off-\<percent>
**Column with equal width**

Building a columns layout by following this steps

1. Add a columns div
1. Add as many column div as you want

Each column will have an equal width, no matter the number of columns.

**Column sizes**

If you want to change the size of a single column, you can use following classes

- `col-<percent>` with `<percent>` equals to one of the following values
  - 10, 20, 30, 40, 50, 60, 70, 80, 90, 100
  - 25, 50, 75
  - 33, 66
- `col-<N>-12` with `<N>` equals to one value from 1 to 12 (12 columns system)

**Column offsets**

While you can use empty columns to create horizontal space around column elements, you can also use col-off-<percent> modifier with <percent> equals to same values as previous.

**Columns options**

- `col-vcentered` to align your columns vertically, add the col-vcentered modifier to the columns container.
- `col-multiline` Add the col-multiline modifier and add more column elements than would fit in a single row.
- `col-centered` While you can use empty columns (like `{{</* div "column" >}}{{< /div */>}}`) to create horizontal space around column elements, you can also use `col-centered` on the parent columns element.

**Examples**

``` text
{{</* div "columns" >}}
{{< div "column" >}}First column{{< /div >}}
{{< div "column" >}}Second column{{< /div >}}
{{< div "column" >}}Third column{{< /div >}}
{{< div "column" >}}Fourth column{{< /div >}}
{{< /div >}}

{{< div "columns" >}}
{{< div "column col-off-10 col-30" >}}30%{{< /div >}}
{{< div "column col-50" >}}50%{{< /div >}}
{{< /div */>}}
```

### margin-\<direction\>-\<percent\>
Set the size of margin in `<direction>` (`top`, `bottom`, `left`, `right`) with `<percent>` value from 1 to 100.

### margin-\<direction\>-neg-\<percent\>
Set the size of margin in `<direction>` (`top`, `bottom`, `left`, `right`) with `<percent>` value from -1 to -100.

### span-\<percent\>
Set the size of element with `<percent>` value from one of following values:
- 5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 55, 60, 65, 70, 75, 80, 85, 90, 95, 100

### stretch
Sometimes it's desirable to have a component, like an image or video, stretch to consume as much space as possible within a given slide.
This can be done by adding the stretch class to a component. Only first descendant of a slide can be stretched.
