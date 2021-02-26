---
title: Interactive iframes
weight: 3
---

Iframe could be used to interact with computing system. Some examples of interactive iframes are given on that page.

{{< toc >}}

## ttyd
[`ttyd`](https://github.com/tsl0922/ttyd) is a simple command-line tool for sharing terminal over the web.

In order to install `ttyd` command-line, use following command:
``` shell
$ brew install ttyd
```

### How to use ttyd with Slides as Code
Launch `ttyd` command-line to execute bash shell and expose server to 8080 port, for instance.
``` bash
$ ttyd -p 8080 bash
```

On your slides deck, use `slide` shortcode to connect to `ttyd`
``` text
{{</* slide iframe="http://localhost:8080" */>}}
```

For further information, see **ttyd**'s [example usage](https://github.com/tsl0922/ttyd/wiki/Example-Usage) page.


## code-server
[`code-server`](https://github.com/cdr/code-server) allows to run VS Code on any machine anywhere and access it in the browser.

In order to install `code-server` server, use following command:
``` shell
$ brew install code-server
```


### How to use code-server with Slides as Code
Launch `code-server` server without authentication.
``` shell
$ code-server --auth none
```

On your slides deck, use `slide` shortcode to connect to `ttyd`
``` text
{{</* slide iframe="http://localhost:8080" */>}}
```

For further information, see **code-server**'s [project](https://github.com/cdr/code-server) page.
