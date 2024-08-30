# typst-CTF-Writeup-template 

> You can read in [ENGLISH](README_en.md).

## 介绍

这是一个为了书写 ctf-writeup 的 typst 模板（当然你也可以用来干其他你想干的），由 [memset0/ZJU-Project-Report-Template](https://github.com/memset0/ZJU-Project-Report-Template) 修改而来

关于 typst, 你可以从 [这里](https://darstib.github.io/blog/2024/05/18/typst-begin/) 开始或者直接阅读 [官方文档](https://typst.app/docs)。
  
关于原模板的特点，你可以在 [这里](https://github.com/memset0/ZJU-Project-Report-Template?tab=readme-ov-file#zju-project-report-template-)查看，大多予以了保留，本项目更多地是修改和优化。

## 使用

### 安装

使用 Git，你可以很简单的获取：

```bash
git clone https://github.com/Darstib/typst-CTF-Writeup-template.git ctf-writeup
git checkout ctf
cd ctf-writeup
```

或者你也可以直接在 GitHub 中切换至 ctf 分支并下载文件（writeup & template.typ 是必须的）放在合适的位置。

### 使用演示

> 以下的内容都同于 [typst_begin](https://darstib.github.io/blog/2024/05/18/typst-begin/) 中的使用，如果你不熟悉 typst 也没关系，对示例修改即可。

在保留原项目可行的同时，我修改了 `template.typ` ，同时在 writeup 文件夹中给出了使用示例材料；在 [demo.pdf](writeup/demo.pdf) 中介绍了本模板与原模板的区别和特点，下面再简略提及：

- 修改了封面和链接表现形式；
- 修改了 codex 块和增加了部分 blockx；
- 增加了多图并列的排版 `#figures`

## 其他

在 vscode 中可以使用 snippet 提高效率，下面是部分针对该项目的 snippet，应当放置在工作区中的 `.vscode/typst.code-snippets` 中：

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
