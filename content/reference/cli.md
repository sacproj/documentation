---
title: CLI
weight: -9
---

{{< toc >}}

`sac` command line is used to:

- install, update, delete Slides as Code themes on your computer
- develop slides deck
- share slides

## Usage
``` text
Usage: sac <command>

Available commands:
  doctor      Show information about the installed tooling
  theme       Theme management
  deck        Deck management
  content     Content management
```

## Theme Management
``` text
theme sub-commands
  install                             Install theme
    github <owner>/<theme>            Install theme from Github latest release
    git <git> [<tag>]                 Install theme from Git URL (with optional <tag>)
    tarball <tarball>                 Install theme from tarball
  installed                           List installed themes and versions
  remove <theme> <version>            Remove installed <theme>/<version>
```

## Deck Management
``` text
deck sub-commands
  new <deck-directory> <theme>...     Create a new slides deck with themes
  code                                Serve slides deck with live updates
  html                                Build slides deck in HTML into public directory
  pdf [<pdf>] [<timeout>]             Build slides deck in PDF (default <pdf>=slides.pdf <timeout>=10000)
```

## Content Management
``` text
content sub-commands
  new <content-name.md>               Create a new content file
```
