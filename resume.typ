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
  photograph: bytes(read("./img/hot-commits.png", encoding: none)),
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
  
  TypeScript, Node.js, Deno, Java, Matlab

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

自2023年以来，维护/开发 #link(gh-pre+"nimpylib/", "nimpylib")，并创建了大小几十个下属仓库，极大扩充了nim语言面向Python开发者的生态

- 大部分仓库都兼顾了JavaScript后端

=== #my-icon("icons/nimpylib.png") nimpylib

主项目网站 https://nimpylib.org/

#item-under-gh("Python标准库的nim迁移",
  "nimpylib/pystdlib",
  "个人项目",
  [#DT(2023, 5) - 至今],
  [ Nim, Python ]
)[
将 Python 标准库中的常用模块迁移到 Nim 语言，提升性能和可维护性

- 实现了 `os`, `sys`, 等核心模块和`math`, `datetime`等几十个常用模块
]

#item-under-gh("Python语法糖的nim迁移",
  "nimpylib/pysugar",
  "个人项目",
  [#DT(2025, 5) - 至今],
  [ Nim, Python ]
)[
将 Python 的常用语法迁移到 Nim 语言

- 基于语法树重写的语法糖实现(`def`, `with`, `class` 等)
- 基于变量查找实现无声明变量定义

]

#item-under-gh("Nim实现的Python解释器",
  "nimpylib/npython",
  "个人项目",
  [#DT(2025, 7) - 至今],
  [ Nim, Python ]
)[


纯Nim从头实现的Python解释器

- 单文件executable
- 除了Native后端支持外，支持Nodejs、Deno、Browser等多种Js后端
- 截止2026-05，已支持 90% 以上 的builtins(内建)函数
- 支持包括词法作用域、迭代器、修饰器、推导表达式在内的大量Python特性
]

== 开源项目参与 #box(rect(text("FOSS", size: 0.4em), radius: 6pt, height: 0.8em), height: 0.5em)

累计对开源项目提交80个PR，总体 PR 合并率 80%

- 向 #repo("nim-lang/Nim") 累计提交 34 个 issue、47 个 PR，主要集中在标准库解析与运行时缺陷修复
- 向 #repo("subsetpark/nim-gmp") 等仓库提交围绕 Nim2 兼容与类型修复的PR。
- 另有对 #repo("python/cpython")、#repo("mermaid-js/mermaid")、#repo("nim-lang/nimble") 等项目的少量贡献。



#item-under-gh("Nim parseopt 缺陷修复",
  "nim-lang/Nim",
  "Issue + 合并 PR",
  DT(2026, 4),
  [ Nim ])[
提交并复现 #issue(25738)，随后修复 #PR(25739) 已合并，解决 `shortNoVal` 下解析 "`-`" 触发 IndexDefect。
]

#item-under-gh("parseFloat -NaN 符号修复",
  "nim-lang/Nim",
  "合并 PR",
  DT(2026, 3),
  [ Nim ])[
修复 `parseFloat` 丢失 `-NaN` 符号的问题（#PR(25598)，已合并）。
]


#pagebreak()


== #my-icon("icons/npm.svg") 发布开源第三方库

#item-under-gh("Typst 包提交：sprintf",
  "typst/packages",
  "合并 PR",
  DT(2026, 5),
  [ Typst ])[
提交并发布 `sprintf` 包，提供 printf 风格的字符串/映射格式化（#PR(4779)，已合并）。
]

#item-under-gh("npm 包提交：catlyrics",
  "litlighilit/catlyrics",
  "publish",
  DT(2025, 12),
  [ JavaScript ])[
发布 `catlyrics` 包，提供命令行下的`歌词查找`功能及附加功能
]

#item-under-gh("nimble 包提交：uctl, ...",
  "litlighilit/uctl",
  "合并 PR",
  DT(2026, 5),
  [ Nim ])[
- uctl: 通过命令行提供对Linux下电量查询、屏幕亮度控制等功能
- ghsh: 如在sh(shell/bash)内访问本地文件系统一样访问github仓库内容
- daily_run: 以类NimScript的脚本方式设置定时任务
- ...
]


== #fa-github github 基础设施使用

几乎所有仓库都配套 CI/CD（GitHub Actions），重点用于自动化测试、构建与发布。

#item-under-gh([Nim 文档自动发布 Action],
  "nimpylib/doc-deploy",
  "CI/CD 工具",
  [#DT(2026, 5) - 至今],
  [ GitHub Actions, Nim, CI/CD ])[
用于一键生成 Nim 文档并部署到 GitHub Pages，适配多仓库复用。

- 市场页：https://github.com/marketplace/actions/nimdoc-deploy
- 示例站点：https://pysugar.nimpylib.org/pysugar/tonim.html
- 示例工作流：https://github.com/nimpylib/pysugar/tree/master/.github/workflows/docs.yml
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
