#import "cse-template.typ": *
#import "@preview/codelst:2.0.2": sourcecode
#show: setup-lovelace

#let algorithm = algorithm.with(supplement: "算法")



#show: project.with(
  anonymous: false,
  title: "基于eBPF加速的高性能用户态文件系统",
  abstract_zh: [
  先帝创业未半而中道崩殂，今天下三分，益州疲弊，此诚危急存亡之秋也。然侍卫之臣不懈于内，忠志之士忘身于外者，盖追先帝之殊遇，欲报之于陛下也。诚宜开张圣听，以光先帝遗德，恢弘志士之气，不宜妄自菲薄，引喻失义，以塞忠谏之路也。

  宫中府中，俱为一体；陟罚臧否，不宜异同。若有作奸犯科及为忠善者，宜付有司论其刑赏，以昭陛下平明之理，不宜偏私，使内外异法也。
  - 
  ],
  team_name: "FastPoke",
  team_mates: "许辰涛、冯可逸、赵胜杰",
  school_name: "哈尔滨工业大学（深圳）",
  comp_name: "proj289",
  school_mentor: "夏文、李诗逸",
  comp_mentor: "郑昱笙",
  date: (2025, 6)
)


= 概述

== 背景及意义

== 目标

== 行动项

== 完成情况

== 开发历程

== 团队分工

#pagebreak()

= 现有研究调研

== FUSE

== eBPF

#pagebreak()

= 整体架构设计

#pagebreak()

= 模块设计和实现

== FUSE 内核模块扩展

== FUSE 元数据请求优化

== FUSE I/O 请求优化

== 多核扩展模块

== 负载监控与请求均衡

#pagebreak()

= 项目测试

== 单核测试

== 多核测试

#pagebreak()

= 总结与展望

#pagebreak()

#bibliography("./ref.bib")
