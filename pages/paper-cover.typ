// 默认本科生毕业论文的封面 (CSE 格式)

#import "../fonts/font-def.typ": *

#let paper_cover(cover_logo_path: "../assets/cse-hust.png", anonymous, title, team_name, comp_name, team_mates, school_mentor, comp_mentor, school_name, date) = {
  align(center)[
    // hust logo
    #v(20pt)

    // 匿名化处理需要去掉个人、机构信息
    #let logo_path = if not anonymous {
      cover_logo_path
    } else {
      "../assets/black.png"
    }
    #image(logo_path)

    #v(40pt)

    #text(
      size: 36pt,
      font: zhongsong,
      weight: "bold"
    )[eFUSE设计开发文档]

    #v(40pt)

    #text(
      font: heiti,
      size: 22pt,
    )[
      #title
    ]

    #v(100pt)

    #let info_value(body) = {
      rect(
        width: 100%,
        inset: 2pt,
        stroke: (
          bottom: 1pt + black
        ),
        text(
          font: zhongsong,
          size: 16pt,
          bottom-edge: "descender"
        )[
          #body
        ]
      ) 
    }
    
    #let info_key(body) = {
      rect(width: 100%, inset: 2pt, 
        stroke: none,
        text(
        font: zhongsong,
        size: 16pt,
        body
      ))
    }

    #grid(
      columns: (70pt, 200pt),
      rows: (30pt, 30pt),
      gutter: 3pt,
      info_key("队伍名称"),
      info_value(if not anonymous { team_name } else { "██████████" }),
      info_key("所属赛题"),
      info_value(if not anonymous { comp_name } else { "██████████" }),
      info_key("项目成员"),
      info_value(if not anonymous { team_mates } else { "██████████" }),
      info_key("院内导师"),
      info_value(if not anonymous { school_mentor } else { "██████████" }),
      info_key("项目导师"),
      info_value(if not anonymous { comp_mentor } else { "██████████" }),
      info_key("所属高校"),
      info_value(if not anonymous { school_name } else { "██████████" }),
    )

    #v(30pt)
    #text(
      font: zhongsong,
      size: 16pt,
    )[
      #date.at(0) 年 #date.at(1) 月
    ]
    #pagebreak()
  ]
}