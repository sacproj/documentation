---
title: Snippets
weight: -6
---

{{< toc >}}

## VS Code
If you want to use [Visual Studio Code](https://code.visualstudio.com/), `sac` comes with auto-completion snippets to ease the slides' authoring.

{{< hint "ok" >}}
You need also to update your VS Code [**User settings**](https://code.visualstudio.com/docs/getstarted/settings) and append the following code block. 
``` json
{
    "[markdown]": {
        "editor.quickSuggestions": true
    }
}
```
{{< /hint >}}


## Auto-complete Codes
By default **VS Code** supports Markdown keyboard shortcuts and auto-completion.

**Slides as Code** adds following auto-completion (see table below).
By typing **Prefix**, corresponding **Item** is auto-completed in your content file.

|Prefix  |Item |
|:---------|:-----------------------------------------------------|
|vss<br>hss | Vertical Slide Separator<br>Horizontal Slide Separator |
|slide   | Slide                                               |
|menu    | Menu Title                                          |
|asciinema<br>box<br>chart<br>code<br>quote<br>typed<br>year | Related Component |
|emoji<br>fab<br>far<br>fas | Related Icon |
|div<br>span<br>ol<br>ul<br>li | Related Format |
|lif | List with fragments |
|tc<br>thc<br>bg<br>ts<br>tz | Text Color<br>Text Highlight Color<br>Background Color<br>Text Style<br>Text Size |
|fragment | Fragment |
|fragment-tc<br>fragment-thc<br>fragment-bg<br>fragment-ts<br>fragment-tz | Text Color Fragment<br>Text Highlight Color Fragment<br>Background Color Fragment<br>Text Style Fragment<br>Text Size Fragment |
|fragment-current-tc<br>fragment-current-thc<br>fragment-current-bg<br>fragment-current-ts<br>fragment-current-tz | Text Color Fragment Current<br>Text Highlight Color Fragment Current<br>Background Color Fragment Current<br>Text Style Fragment Current<br>Text Size Fragment Current
|columns<br>column<br>col<br>col-off<br>col-12<br>span |Columns div<br>Column div<br>Column percent<br>Column offset percent<br>Column size in 12th<br>Span percent|
|audio<br>img<br>video | Corresponding Media |
|element | Element Markdown extension |
