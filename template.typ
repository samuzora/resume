#import "@preview/fontawesome:0.4.0": *

#let first-text-color = rgb(209, 216, 228)
#let second-text-color = rgb(178, 171, 192)
#let third-text-color = rgb(210, 210, 158)

#let info = yaml("./info.yaml")
#let show-phone = false

#let title = () => {
  align(center, text(size: 20pt, fill: third-text-color)[
    Lucas Tan Yi Jie
  ])
}

#let subtitle = () => {
  set text(fill: second-text-color)
  align(center, text(weight: 300)[
    CTF and cybersecurity enthusiast, proficient in binary and web exploitation
  ])
  v(1em)
}

#let details = () => {
  grid(
    columns: (1fr, 1fr),
    row-gutter: 1em,
    [#fa-icon("globe") https://samuzora.com],                        [#fa-icon("github") https://github.com/samuzora],
    ..if show-phone { ([#fa-icon("phone") #info.phone], ) },         [#fa-icon("envelope") lucastanyj\@gmail.com],
    [#fa-icon("linkedin") https://linkedin.com/in/lucas-tan-yi-jie],
  )
}

#let education = () => [
  #let education-header = (name, duration) => {
    grid(
      columns: (auto, 1fr, auto),
      column-gutter: 0.5em,
      align: horizon,
      heading(level: 2, name), line(length: 100%, stroke: second-text-color), duration,
    )
  }

  = #fa-icon("graduation-cap") Education
  #v(1em)

  #education-header([PSLE], [2013 - 2018])
  Attended *Maris Stella High School (Primary)*, graduated with a T-Score of 268

  #education-header([IBDP], [2019 - 2024])
  Attended *Anglo-Chinese School (Independent)*, graduated with 44 IB points

  #grid(
    columns: (1fr, 1fr),
    column-gutter: 1em,
    [
      HL subjects:
      - Maths AA
      - Physics
      - Chemistry
    ], [
      SL subjects:
      - Lang Lit
      - Economics
      - Chinese B
    ]
  )

  Served as Vice-Chair of *Robotics Technology Society*, head of *Coding
  Competition Team*

  Organized *HACK\@AC CTF* 2022 and 2024
  - Built a CTF platform using Next.js and Postgres to host HACK\@AC, able to
    handle load of 400+ participants without downtime
  - Handled infrastructure for platform and challenges using DigitalOcean and
    Docker
  - Created web and pwn challenges
]

#let experience = () => [
  #let experience-header = (name, duration) => {
    grid(
      columns: (auto, 1fr, auto),
      column-gutter: 0.5em,
      align: horizon,
      heading(level: 2, name), line(length: 100%, stroke: second-text-color), duration,
    )
  }

  = #fa-icon("briefcase") Experience
  #v(1em)

  #experience-header([Intern, CSA], [Nov 2022 - Feb 2023])

  Interned at *Capability and Ecosystem Masterplanning Office* and researched
  the applications of emerging technologies in cybersecurity, such as novel
  malware analysis techniques using modified image classification models

  Conducted an exploration of the applications of Large Language Models in red-
  and blue-team cybersecurity, including code analysis, incident response, and
  safer high-interaction honeypots
]

#let cves = () => [
  #let cve-header = (id, desc) => {
    grid(
      columns: (auto, 1fr, auto),
      column-gutter: 0.5em,
      align: horizon,
      heading(level: 2, id), line(length: 100%, stroke: second-text-color), desc,
    )
  }

  = #fa-icon("bug") CVEs
  #v(1em)

  #cve-header([CVE-2024-36361], [RCE in Pug v3.0.2])

  Discovered a bug in Pug JS compiler that, when certain conditions are fulfilled,
  allows the attacker to achieve remote code execution in the server.

  #text(fill: second-text-color)[NVD:] https://nvd.nist.gov/vuln/detail/CVE-2024-36361

  #text(fill: second-text-color)[Publication:] https://samuzora.com/posts/cve-2024-36361

  #cve-header([CVE-2024-40453], [RCE in Squirrelly v9.0.0])

  Discovered a bug in Squirrelly JS compiler that, when certain conditions are
  fulfilled, allows the attacker to achieve remote code execution in the server.

  #text(fill: second-text-color)[NVD:] https://nvd.nist.gov/vuln/detail/CVE-2024-40453

  #text(fill: second-text-color)[Publication:] https://samuzora.com/posts/cve-2024-40453
]

#let ctfs = () => [
  #let ctf-header = (name, placing) => {
    grid(
      columns: (auto, 1fr, auto),
      column-gutter: 0.5em,
      align: horizon,
      name, line(length: 100%, stroke: second-text-color), placing,
    )
  }

  = #fa-icon("trophy") CTFs

  == 2021

  #ctf-header([MetaRed CTF], [1st place])
  #ctf-header([Sieberrsec CTF], [3rd place])

  == 2022

  #ctf-header([Winja x Nullcon CTF], [3rd place])
  #ctf-header([Youth Cyber Exploration Programme], [1st place])
  #ctf-header([Bluehens CTF], [2nd place])
  #ctf-header([Codegate Junior], [22nd in quals, 4th in finals])

  == 2023

  #ctf-header([Sieberrsec CTF], [1st place])
  #text(fill: second-text-color)[Writeup:] https://samuzora.com/posts/sieberrsec-2024
  #ctf-header([Cyberthon], [2nd place])
  #text(fill: second-text-color)[Writeup:] https://samuzora.com/posts/cyberthon-2023
  #ctf-header([Advanced Youth Cyber Exploration Programme], [3rd place])
  #ctf-header([NUS Grey Cat the Flag], [6th place])
  #ctf-header([Codegate Junior], [13th in quals, 7th in finals])
  #ctf-header([The InfoSecurity Challenge], [Levels 8/10 (14th place)])
  #text(fill: second-text-color)[Writeup:] https://samuzora.com/posts/tisc-2023

  == 2024

  #ctf-header([Lag and Crash CTF], [1st place])
  #text(fill: second-text-color)[Writeup:] https://samuzora.com/posts/lnc-2024
  #ctf-header([Asian Cyber Security Challenge], [2nd in Singapore (30th in Asia)])
  #ctf-header([Cyberthon], [3rd place])
  #ctf-header([Codegate Junior Quals], [5th place])
  #ctf-header([NUS Grey Cat the Flag], [1st place])
  #text(fill: second-text-color)[Writeup:] https://samuzora.com/posts/grey-finals-2024
  #ctf-header([The InfoSecurity Challenge], [Levels 11/12 (2nd place)])
  #text(fill: second-text-color)[Writeup:] https://samuzora.com/posts/tisc-2024
]

#let template = (it) => {
  set page(fill: rgb(30, 30, 30), margin: 4em)
  set text(fill: first-text-color, font: "Fredoka")
  show heading: set text(weight: 500, fill: second-text-color)

  title()
  subtitle()
  details()

  line(stroke: second-text-color, length: 100%)

  education()
  experience()
  cves()
  ctfs()
}
