---
title: Getting Started
weight: -20
---

This page tells you how to get started with Slides as Code CLI and theme, including installation and basic usage.

{{< toc >}}

{{< hint "info" >}}
## Homebrew as package manager
Since [Homebrew](https://brew.sh/) decided to merge Linuxbrew into Homebrew  (see [related blog post](https://brew.sh/2019/02/02/homebrew-2.0.0/)), in my opinion, with [Windows Subsystem for Linux](https://docs.microsoft.com/en-us/windows/wsl/install-win10) (WSL), HomeBrew becomes a de facto multi-platform package manager for additional software.

So, [Homebrew](https://brew.sh/) can be used on Linux, macOS, and WSL.

However, there is no “best” way to install **Slides as Code** and its requirements on your computer.
You should use the method that works best for your use case.
{{< /hint >}}

## Command Line

### CLI Installation

#### Installation Requirements

The `sac` command line is a Bash 4.x script targeting Linux, macOS, and WSL. It requires **bash**, **coreutils**, **git**, **hugo**, **jq**, **tree** and **yq**.

``` shell
$ brew install bash coreutils git hugo jq tree yq
```

In order to install these tools with another method, please follow related documentation:

- [**bash**](https://www.gnu.org/software/bash/manual/html_node/Installing-Bash.html) version 4.x and above
- [**coreutils**](https://www.gnu.org/software/coreutils/) version 8.x and above
- [**git**](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) version 2.x and above
- [**hugo**](https://gohugo.io/getting-started/installing/) version 0.80 and above
- [**jq**](https://stedolan.github.io/jq/download/) version 1.6 and above
- [**tree**](http://mama.indstate.edu/users/ice/tree/) version 1.8.0 and above
- [**yq**](https://mikefarah.gitbook.io/yq/) version 4.x and above


#### Homebrew
To download and install the latest version of `sac` command line, [Homebrew](https://brew.sh/) can be used on Linux, macOS, and WSL.

``` shell
$ brew install sacproj/sac/sac
```


#### Tarball
When installing from the tarball, you have to decide where to install the `sac` script (e.g `/usr/local/bin`).

- Download the tarball `sac-cli.tar.gz` from [releases page](https://github.com/sacproj/sac-cli/releases).
- Unpack the tarball, copy `sac` and `pdf.js` scripts where you decide with following tree.

``` shell
├── bin
│   └── sac
└── libexec
    └── pdf.js
```

#### Checking Installation
Execute following command to check requirements.

``` shell
$ sac doctor
```

For each tool, `sac doctor` command checks the presence of it and outputs `OK` or `KO` as result. You have to install missing tools in order to get `sac` command line to work as expected.

### CLI in Container Image
An alternative way of using `sac` command-line is to use the **container image** available at [sacproj/sac](https://hub.docker.com/r/sacproj/sac).
It could be used with following function.
``` shell
function sac() { \
  docker run --rm \
    -e SAC_DECK_CODE_HUGO_ARGS="--bind 0.0.0.0" \
    -v $(pwd):/home/linuxbrew/sac \
    -v $HOME/.sac/themes:/usr/local/share/sac/themes \
    -p 1313:1313 \
    -w /home/linuxbrew/sac \
    -it sacproj/sac:2.0.6 sac "$@"; }
```

## Theme Installation
In order to install latest Slides as Code Theme, execute following command:

``` shell
$ sac theme install github sacproj/sac-theme
```

Then, check installed themes by executing following command:

``` shell
$ sac theme installed
/usr/local/share/sac/themes
└── sac
    └── x.y.z
```


## Create new Presentation
Create a new slides Deck with Slides as Code theme in `my-awesome-slides` directory:

``` shell
$ sac deck new my-awesome-slides sac/x.y.z
```

Go to created repository

``` shell
$ cd my-awesome-slides
```

Slides content can be split into multiple Markdown files.<br>
So, create few new content files to organize your slides deck:

``` shell
$ sac content new cover.md
my-awesome-slides/content/home/cover.md created
 
$ sac content new intro.md
my-awesome-slides/content/home/intro.md created
 
$ sac content new info.md
my-awesome-slides/content/home/info.md created

$ sac content new qa.md
my-awesome-slides/content/home/qa.md created
```

Thereby, the directory layout of your slides deck is following:

``` text
my-awesome-slides/
├── .gitignore
├── .vscode
│   └── sac.code-snippets
├── config.yaml
├── content
│   └── home
│       ├── cover.md
│       ├── info.md
│       ├── intro.md
│       └── qa.md
└── static
    ├── charts
    ├── codes
    ├── diagrams
    ├── images
    ├── sessions
    ├── sounds
    └── videos
```

- `content/home` directory contains the just created Markdown files.
- Directories inside `static` will contain elements such as images, source code used by the slides deck.
- `config.yaml` contains the slides deck configuration (see [Configuration]({{< ref "reference/configuration" >}}) page).
- `sac.code.snippets` contains VS Code snippets used by selected themes (see [Snippets]({{< ref "reference/snippets" >}}) page).

## Code your Presentation Slides

In order to code (with live update) or present your slides deck, execute following command:

``` shell
$ sac deck code
```

{{< hint "info" >}}
See [Content Source]({{< ref "usage/content" >}}) to code your presentation slides.
{{< /hint >}}
