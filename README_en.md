# typst-CTF-Writeup-template

> 你可以用[中文阅读](README.md)。

## Introduction

This is a Typst template designed for writing CTF write-ups(Of course you can use it for whatever else you want), modified from [memset0/ZJU-Project-Report-Template](https://github.com/memset0/ZJU-Project-Report-Template).

For more about Typst, you can start from [here](https://darstib.github.io/blog/2024/05/18/typst-begin/) or directly read the [official documentation](https://typst.app/docs).

Regarding the features of the original template, you can check them out [here](https://github.com/memset0/ZJU-Project-Report-Template?tab=readme-ov-file#zju-project-report-template-). Most of them have been retained, and this project focuses more on modifications and optimizations.

## Usage

### Installation

Using Git, you can easily obtain it:

```bash
git clone https://github.com/Darstib/typst-CTF-Writeup-template.git ctf-writeup
git checkout ctf # if it's not in ctf
cd ctf-writeup
```

Or you can directly switch to the ctf branch in GitHub and download the files (writeup & template.typ are required) and place them in the appropriate location.

### Usage Demonstration

> The following content is the same as the usage in [typst_begin](https://darstib.github.io/blog/2024/05/18/typst-begin/). If you are unfamiliar with Typst, don't worry, you can modify the examples directly.

While keeping the original project feasible, I have modified `template.typ` and provided example materials in the writeup folder. The differences and features between this template and the original template are introduced in [demo.pdf](writeup/demo.pdf), which I will briefly mention again below:

- Modified the cover and link presentation;
- Modified the codex block and added some blockx;
- Added a layout `#figures` for multiple images in parallel.

## Others

In vscode, you can use snippets to improve efficiency. The following are some snippets for this project, which should be placed in `.vscode/typst.code-snippets` in the workspace:

```snippet title=".vscode/typst.code-snippets"
{
  "Figure": {
    "prefix": "#fig",
    "body": [
      "#figure(",
      "  image(\"$1\", width: 50$2%),",
      "  caption: \"$3\",",
      ")"
    ],
    "description": "Insert a figure with an image from attachments folder",
  },
  "Link": {
    "prefix": "#link",
    "body": [
      "#link(\"$1\")[$2]",
    ],
    "description": "Insert a link",
  },
  "Blockx": {
    "prefix": "#blockx",
    "body": [
      "#blockx[$1]",
    ],
    "description": "Insert a blockx",
  },
  "Codex": {
    "prefix": "#codex",
    "body": [
      "#codex(read(\"codes/$1\"), lang: \"python$2\", name: \"$1\")$3",
    ],
    "description": "Insert a blockx",
  },
  "Qustion":{
    "prefix": "#question",
    "body": [
      "#question(name:\"Question$1\")[$2]",
    ],
    "description": "Insert a question",
  },
  "Superbold":{
    "prefix": "#superbold",
    "body": [
      "#superbold[$1]",
    ],
    "description": "Insert a superbold",
  },
}
```