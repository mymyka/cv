#set page(margin: (x: 0.5in, y: 0.4in))
#set par(justify: true, leading: 0.65em)

#align(center)[
  #box(
    width: 3cm,
    height: 3cm,
    image("assets/profile.jpg", width: 3cm, height: 3cm, fit: "cover"),
    clip: true,
    radius: 150pt,
  )
  #v(0.4em)
  #text(size: 24pt, weight: "bold")[Mykyta Kasianenko]
  #v(0.15em)
  #text(size: 12pt, fill: rgb("#444444"))[Python & AI Software Engineer]
  #v(0.3em)
  #text(size: 9pt, fill: rgb("#666666"))[
    #link("mailto:mykytakasianenko@gmail.com")[mykytakasianenko\@gmail.com] |
    +48 661 391 737 |
    Poland, Bydgoszcz |
    #link("https://www.linkedin.com/in/mykyta-kasianenko/")[
      #underline()[#text(fill: blue, weight: "bold")[LinkedIn]]
    ]
  ]
]

#v(0.4em)

// Section heading helper — uppercase, spaced, subtle
#let section(title) = {
  v(0.5em)
  text(size: 8pt, weight: "bold", fill: rgb("#888888"), tracking: 1.5pt, upper(title))
  v(0.35em)
}

#section("Professional Experience")

#grid(
  columns: (1fr, auto),
  gutter: 1em,
  [
    #text(weight: "bold", size: 11pt)[Python / AI Software Engineer] \
    #text(style: "italic", size: 10pt, fill: rgb("#555555"))[Empat • Full-time • Hybrid]
  ],
  [
    #align(right)[
      #text(weight: "bold", size: 10pt)[Apr 2024 – Mar 2026] \
      #text(size: 9pt, fill: rgb("#666666"))[Kyiv, Ukraine]
    ]
  ],
)
#v(0.35em)
#set list(marker: [•], indent: 0.5em, body-indent: 0.5em)
- Optimized critical backend performance, went from 1 minute to couple of seconds loading, significantly improving system efficiency and user experience
- Led scalable and maintainable backend architecture design and project
- Migrated high-load logic from Firebase to custom infrastructure, reducing costs and improving control
- Fixed critical production bugs, maintaining system stability and reliability

#v(0.4em)
#grid(
  columns: (1fr, auto),
  gutter: 1em,
  [
    #text(weight: "bold", size: 11pt)[Python / AI Software Engineer] \
    #text(style: "italic", size: 10pt, fill: rgb("#555555"))[Freelance • Full-time • Remote]
  ],
  [
    #align(right)[
      #text(weight: "bold", size: 10pt)[May 2022 – Apr 2024] \
      #text(size: 9pt, fill: rgb("#666666"))[Kyiv, Ukraine]
    ]
  ],
)
#v(0.35em)
#set list(marker: [•], indent: 0.5em, body-indent: 0.5em)
- Fixed critical performance bugs
- Improved conversion on marketing websites
- Integrated A/B testing and feature flags
- Delivered key product features

#section("Education")

#grid(
  columns: (1fr, auto),
  gutter: 1em,
  [
    #text(weight: "bold", size: 11pt)[Bachelor's degree in Computer Science] \
    #text(style: "italic", size: 10pt, fill: rgb("#555555"))[V. N. Karazin Kharkiv National University]
  ],
  [
    #align(right)[
      #text(weight: "bold", size: 10pt)[Sep 2020 – May 2024] \
      #text(size: 9pt, fill: rgb("#666666"))[Kharkiv, Ukraine]
    ]
  ],
)
#v(0.35em)
- Completed comprehensive computer science curriculum with strong academic performance
- Gained expertise in software engineering principles, best practices, and modern development methodologies
- Developed strong foundation in algorithms, data structures, system design, and problem-solving

#section("Technical Skills")

#set par(justify: false)
#text(size: 10pt)[
  *Languages:* Python, Golang, JavaScript, TypeScript, SQL \
  *Frameworks & Libraries:* FastAPI, Django, React.js, Next.js, Anchor Framework \
  *Cloud & Infrastructure:* Google Cloud Platform, AWS, Firebase, Docker, CI/CD \
  *Databases & Storage:* PostgreSQL, Redis, Google BigQuery \
  *AI & Machine Learning:* Vertex AI, LLM, LangChain, GenAI \
]

#section("Languages")

#set par(justify: false)
#let lang(name, level, cefr) = {
  grid(
    columns: (auto, auto, 1fr),
    column-gutter: 0.5em,
    align: horizon,
    text(weight: "bold", size: 10pt)[#name],
    box(
      fill: rgb("#eeeeee"),
      radius: 3pt,
      inset: (x: 5pt, y: 2pt),
      text(size: 8pt, weight: "bold", fill: rgb("#444444"))[#cefr],
    ),
    text(size: 9pt, fill: rgb("#888888"))[],
  )
  v(0.2em)
}

#lang("English", "Full professional proficiency", "C1")
#lang("Polish", "Limited working proficiency", "B1")
#lang("Ukrainian", "Native or bilingual proficiency", "C2")
#lang("Russian", "Native or bilingual proficiency", "C2")
