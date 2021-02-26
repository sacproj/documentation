---
title: Customization
weight: -17
---

{{< toc >}}

## Composable parts
TODO

## Example
An example of customization is available on [sac-theme-acme](https://github.com/sacproj/sac-theme-acme) project.

### Customization
TODO

### Usage
- Install Slides as Code CLI
``` shell
$ brew install sacproj/sac/sac
```
- Install Slides as Code Theme
``` shell
$ sac theme install github sacproj/sac-theme
```
- Install Slides as Code ACME Theme
``` shell
$ sac theme install github sacproj/sac-theme-acme
```
- Check installed themes
``` shell
$ sac theme installed
/usr/local/share/sac/themes
├── acme
│   └── 1.0.0
└── sac
    └── 2.0.0
```
- Create a new slides deck in `example` directory
``` shell
$ sac desk new example sac/2.0.0 acme/1.0.0
```
- Create some slides content files
``` shell
$ cd example
$ sac content new content.md
$ sac content new end.md
```
- Open `content/home/content.md` file and write following content:
``` text
---
weight: 10
markup: "html"
---
{{</* layer type="title" title="Palette" subtitle="Colors" >}}

------
{{< layer title="Colors" >}}

{{< div "text-highlight-orange" >}}orange{{< /div >}}
{{< div "text-highlight-blue" >}}blue{{< /div >}}
{{< div "text-highlight-gray" >}}gray{{< /div >}}
{{< div "text-highlight-yellow" >}}yellow{{< /div >}}
{{< div "text-highlight-brown" >}}brown{{< /div */>}}
```
- Open `content/home/end.md` file and write following content:
``` text
---
weight: 20
markup: "html"
---
{{</* menu-title "End" >}}
{{< layer-logo */>}}
```
- Show slides deck and open your browser to show customized theme in action.
``` shell
$ sac deck code
```
