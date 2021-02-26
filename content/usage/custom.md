---
title: Customization
weight: -17
---

{{< toc >}}

## Base Theme
[`sac-theme`](https://github.com/sacproj/sac-theme) is a **Base Theme** of **Slides as Code**.

## Theme
Hugo Template and Configuration, VS Code Snippets and Contents are the composable parts of the **Base Theme**.

A **Theme** is a Git repository or tarball that could contains one or more composable parts. Composable part adds or overrides features from previous theme(s) in the configured list (when slides deck has been created by `sac deck new` command).

{{< hint "ok" >}}
A **Theme** should contain a `VERSION` file that contains one line with its name (`name`) and version (`x.y.z`):
``` text
name/x.y.z
```
When installing it with `sac theme install` command, the **Theme** will be installed into `/usr/local/share/sac/themes/name/x.y.z` directory.
{{< /hint >}}


### Hugo Template and Configuration
Hugo Template and Configuration composition is managed by **Hugo** command-line.

Thereby, `assets` (containing CSS and Javascript), `layout` (containing HTML and Shortcodes) and `static` (containing logos, images), `config.yaml` elements can be added or override by the **Theme** .

A **Theme** should contains `theme.toml` file as required by **Hugo**.

See [Hugo documentation](https://gohugo.io/documentation/) page for further information.

### Contents
`sac deck new` command copies contents (from each `content` directory, if exists) from given themes into `content` directory of your slides deck directory.

{{< hint "info" >}}
This composable part can be used to get **predefined content** for different usages such as sales pitch deck, reference architecture design...
{{< /hint >}}

### VS Code Snippets
`sac deck code` command merges VS Code snippets from previously configured themes into `.vscode/sac.code-snippets` file of your slides deck directory.

## ACME Theme Example
An example of **Theme** is available on [sac-theme-acme](https://github.com/sacproj/sac-theme-acme) project.

### Hugo Template, Configuration
ACME theme contains some overrides for **Hugo**:
- HTML in [`layouts/partials/sac/body.html`](https://github.com/sacproj/sac-theme-acme/blob/main/layouts/partials/sac/body.html) to create a branding layer for the slides.
- Shortcodes in [`layouts/shortcodes`](https://github.com/sacproj/sac-theme-acme/tree/main/layouts/shortcodes) to manage title and subtitle layers.
- SCSS in [`assets/sac/scss/custom.scss`](https://github.com/sacproj/sac-theme-acme/blob/main/assets/sac/scss/custom.scss) file.
- Javascript in [`sac-theme-acme/assets/sac/js/custom.js`](https://github.com/sacproj/sac-theme-acme/blob/main/assets/sac/js/custom.js) to manage `brand` layer.
- Logo and image in [`static/acme`](https://github.com/sacproj/sac-theme-acme/tree/main/static/acme) directory.

### Contents
ACME theme contains a cover slide for every slides deck created with it, stored in [`content/_index.md`](https://github.com/sacproj/sac-theme-acme/blob/main/content/_index.md) file.


### VS Code Snippets
ACME theme contains VS Code snippets in [.vscode/sac.code-snippets](https://github.com/sacproj/sac-theme-acme/blob/main/.vscode/sac.code-snippets) file. It contains:
- palette colors override for `*Color` snippets
- `layer*` snippets to implement `layer` and `layer-logo` shortcodes

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
$ sac theme install git git@github.com:sacproj/sac-theme-acme.git 1.0.0
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
$ sac deck new example sac/2.0.0 acme/1.0.0
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
