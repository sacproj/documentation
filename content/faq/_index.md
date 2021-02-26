---
title: FAQ
weight: 1000
---

{{< toc >}}

## What is the presentation size?
A Presentation made with **Slides as Code** theme has a default size of (width: 1920, height: 1080), that is, the resolution at which they are authored. This size can be customized in `config.yaml` (see [Configuration]({{< ref "reference/configuration" >}})).

The framework will automatically scale presentations uniformly based on this size to ensure that everything fits on any given display or viewport.

## Some features don't seem to work after updating a theme
After the update of a theme, you should do a hard reload on your browser (CRTL+SHIFT+R) of your slides deck.

## Can't apply fragment to a list item
If a list item contains Markdown or another shortcode, `element` with `fragment` class doesn't work as expected.

Replace following code (that doesn't work as expected)
``` text
{{</* ul "class" >}}
- **abc**
<!-- .element class="fragment" -->
- **mno**
<!-- .element class="fragment" -->
- {{< span "text-highlight-black" >}}xyz{{< /span >}}
<!-- .element class="fragment" -->
{{< /ul */>}}
```

by this one

``` text
{{</* ul "class" >}}
{{< li "fragment" >}}**abc**{{< /li >}}
{{< li "fragment" >}}**mno**{{< /li >}}
{{< li "fragment" >}}{{< span "text-highlight-black" >}}**xyz**{{< /span >}}{{< /li >}}
{{< /ul */>}}
```

In fact, `element` replaces the class attribute from the last inner child object from the previous line.
