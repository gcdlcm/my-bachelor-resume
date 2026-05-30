#import "./template.typ": *
#import "@preview/sicons:16.0.0": sicon-label
#import "@local/myInfo:0.1.0"


// 设置简历选项与头部
#show: resume.with(
  // 字体和基准大小
  size: 10pt,
  // 标题颜色
  theme-color: theme-color,
  // 控制纸张的边距
  margin: (
    top: 1.5cm,
    bottom: 2cm,
    left: 2cm,
    right: 2cm,
  ),

  // 如果需要姓名及联系信息居中，请删除下面关于头像的三行参数，并取消header-center的注释
  //header-center: true,

  // 如果不需要头像，则将下面三行的参数注释或删除
  photograph: "profile.jpg",
  photograph-width: 10em,
  gutter-width: 2em,
)[
  = #myInfo.name

  #info(
    color: theme-color,
    (
      icon: fa-phone,
      content: "(+86) " + myInfo.sepPhone,
    ),
    (
      icon: fa-building-columns,
      content: myInfo.school,
    ),
    (
      icon: fa-graduation-cap,
      content: myInfo.major,
    ),
    (
      icon: fa-envelope,
      content: myInfo.email,
      link: "mailto:" + myInfo.email,
    ),
    (
      icon: fa-github,
      content: myInfo.github,
      link: "https://" + myInfo.github,
    ),
  )
][
  #h(2em)
  作为一名计算机专业的学生，我专注于全栈开发、基础工具开发、基础库开发和编译器开发。具有扎实的编程基础，热衷于开源项目贡献。在校期间参与多个开源项目，对CPython的和Nim有深入研究。
]


== #fa-graduation-cap 教育背景

#sidebar(with-line: true, side-width: 12%)[
  2027.06

  2023.09
][
  *#{myInfo.school}* · #{myInfo.department} · #{myInfo.major}

  GPA: 3.26 / 4 //· Rank: 0%
]


== #fa-wrench 专业技能

#sidebar(with-line: false, side-width: 12%)[
  *操作系统*
  
  *掌握*
  
  *熟悉*

  *了解*
][
  #fa-linux #[Linux (#fa-archlinux archlinux, #fa-debian debian)], #h(0.5em) #fa-windows Windows
  
  Python, Django, Nim, JavaScript, C/C++, gdb, vim
  
  TypeScript, Node.js, Java, Matlab

  Golang, Rust, Vue, Android
]


== #fa-code 合作项目经历

#item-under-gh("爱特社团招新官网",
  "24ITstudio/itstudio-website-backend",
  "合作项目",
  [#DT(2024, 5) - #DT(2025, 7)],
  [ Django, Python ])[
主持开发爱特工作室招新官网

- 负责完成后端API的设计与绝大部分实现
- 负责部署与后期维护工作 
]

//TODO: classification of project experience
#item-under-gh("风速预测",
  "24ITstudio/Fan_matlab",
  "合作项目",
  [#DT(2024, 9) - #DT(2025, 4)],
  [ Django, Matlab, Python ])[
为工程学院风速预测系统开发网站，负责Matlab对接Python、API文档撰写、网站后端开发与维护

//网站前端呈现 https://wind.itstudio.club/
]

//TODO: replace
#item-under-gh("nim移植LoongArch",
  "RamessesN/Nim2LoongArch64",
  "比赛项目",
  [#DT(2024, 9) - #DT(2024, 12)],
  [ LoongArch64, Nim ], append-git-id: false)[
OS系统工具迁移

- 完成Nim语言编译器在国产龙芯CPU下的迁移，提高Nim跨平台性
- 为龙芯架构提供更现代化、特性丰富的编译系统
]

#pagebreak()

== #fa-github 个人项目经历

=== #my-icon("icons/nimpylib.png") nimpylib

主项目网站 https://nimpylib.org/

#item-under-gh("Python标准库的nim迁移",
  "nimpylib/pystdlib",
  "个人项目",
  [#DT(2023, 5) - 至今],
  [ Nim, Python ]
)[
将 Python 标准库中的常用模块迁移到 Nim 语言，提升性能和可维护性

- 实现了 `os`, `sys`, 等核心模块以及`math`, `datetime`等常用模块
]

#item-under-gh("Python语法糖的nim迁移",
  "nimpylib/pysugar",
  "个人项目",
  [#DT(2025, 5) - 至今],
  [ Nim, Python ]
)[
将 Python 的常用语法迁移到 Nim 语言

- 基于语法树重写的语法糖实现(`def`, `with`, `class` 等)

]

== #fa-award 获奖情况

#item(
  [ *第14届蓝桥杯* ],
  [ *省级二等奖* ],
  date(DT(2024, 4)),
)

#item(
  [ *“九天·梧桐”杯 数智创新大赛* ],
  [ *全国二等奖* ],
  date(DT(2026, 4)),
)

== #fa-building-columns 校园经历

#item(
  [ *#{myInfo.school}爱特工作室社长* ],
  [网站开发技术性社团],
  date[#DT(2024, 9) - #DT(2025, 6)],
)
