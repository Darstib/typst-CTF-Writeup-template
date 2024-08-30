#import "../template.typ": *

#show: project.with(
  theme: "project",
  course: "Writeup for CTF",
  title: "Demo case",
  teacher: "darstib",
  author: "darstib",
  college: "Zhejiang University",
  major: "Information Security",
  school_id: "1234567890",
  date: "2024/08/30",
)

#show link: underline

= Demo

#info[
  #link("https://github.com/Darstib/typst-CTF-Writeup-template")[Github repository]
  ]

== cover & link

去除了封面的 zju_logo ，如果需要，自己加上即可；

修改了封面信息，预览如下，对于不希望展示的部分，留空或者为 none 即可：

#figure(
  image("attachments/demo3.png", width: 30%),
  caption: "demo3",
)

在开头加上 `#show link: underline` 使链接具有下划线。

== modify block

=== codex

为代码框增加双边框，并在左上角展示代码文件名：

#codex(read("codes/show.py"), lang: "python", name: "show.py")

如果恰好换页则呈现效果如下：

#codex(read("codes/show.cpp"), lang: "c++", name: "show.cpp")

=== blockx

在原模板中，基于blockx的块，设置可自定义名称；如果不设定 name ，则默认使用`template.typ`中的设定作为名称。

`#blockx(name: "block_name")[#lorem(10)]`

#blockx(name: "block_name")[#lorem(10)]

将 `blockx` 改为下面的内容均可：

- example
- proof
- abstract
- summary
- info
- note
- tip
- hint
- success
- important
- help
- warning
- attention
- caution
- failure
- danger
- error
- bug
- quote
- cite
- experiment
- question
- analysis

#important(name: "ADD")[新增了以下块：]

- option
  - #option[your can ignore here]
- comment
  - #comment[here is my comment]
- flag // for hand out your flag
  - #flag[flag{this_is_a_flag}]
- superbold
  - #superbold[A more pronounced bold]
- prerequisite

#pagebreak()

== muti figures

增加了多图并列的排版方式：

- 使用原有的 `#figure` 即可，但需要将 `caption` 放在 `grid` 中，并设置 `caption` 的位置：

`#figure(grid(
  columns: 2, 
  gutter: 2pt,
  image("attachments/demo1.png", width: 75%),
  image("attachments/demo2.jpg", width: 75%),
  text("（a）demo1", size: 15pt),
  text("（b）demo2", size: 15pt),
), caption: [
  GROUP 1
])`

#figure(grid(
  columns: 2,
  gutter: 2pt,
  image("attachments/demo1.png", width: 75%),
  image("attachments/demo2.jpg", width: 75%),
  text("（a）demo1", size: 15pt),
  text("（b）demo2", size: 15pt),
), caption: [
  GROUP 1
])

- 使用 figures

`#figures(
  columns: 2,
  images: (
    image("attachments/demo1.png", width: 75%),
    image("attachments/demo2.jpg", width: 75%)
  ),
  texts: (
    "Demo 1",
    "Demo 2"
  ),
  caption: [GROUP 2]
)`

#figures(
  columns: 2,
  images: (
    image("attachments/demo1.png", width: 75%),
    image("attachments/demo2.jpg", width: 75%)
  ),
  texts: (
    "Demo 1",
    "Demo 2"
  ),
  caption: [GROUP 2]
)

