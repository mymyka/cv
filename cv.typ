#set page(margin: (x: 0.6in, y: 0.6in))
#set par(justify: true, leading: 0.65em)

#align(center)[
  #box(
    width: 3cm,
    height: 3cm,
    image("assets/profile.jpg", width: 3cm, height: 3cm, fit: "cover"),
    clip: true,
    radius: 150pt,
  )

  #v(0.5em)
  #text(size: 24pt, weight: "bold")[Mykyta Kasianenko]

  #v(0.2em)
  #text(size: 12pt, fill: rgb("#444444"))[Python & AI Software Engineer]

  #v(0.4em)
  #text(size: 9pt, fill: rgb("#666666"))[
    #link("mailto:mykytakasianenko@gmail.com")[mykytakasianenko\@gmail.com] |
    +48 661 391 737 |
    Poland, Bydgoszcz |
    #link("https://www.linkedin.com/in/mykyta-kasianenko/")[
      #underline()[
        #text(
          fill: blue,
          weight: "bold",
        )[LinkedIn]
      ]
    ]
  ]
]

#v(0.5em)
#line(length: 100%, stroke: 0.5pt + rgb("#cccccc"))
#v(0.8em)


#text(size: 14pt, weight: "bold")[Professional Experience]
#v(0.5em)

#grid(
  columns: (1fr, auto),
  gutter: 1em,
  [
    #text(weight: "bold", size: 11pt)[Python / AI Software Engineer] \
    #text(style: "italic", size: 10pt, fill: rgb("#555555"))[Empat • Full-time • Hybrid]
  ],
  [
    #align(right)[
      #text(weight: "bold", size: 10pt)[January 2024 – Present] \
      #text(size: 9pt, fill: rgb("#666666"))[Kyiv, Ukraine]
    ]
  ],
)

#v(0.4em)

#set list(marker: [•], indent: 0.5em, body-indent: 0.5em)
- Optimized critical backend performance, went from 1 minute to couple of seconds loading, significantly improving system efficiency and user experience
- Led scalable and maintainable backend architecture design and project
- Migrated high-load logic from Firebase to custom infrastructure, reducing costs and improving control
- Fixed critical production bugs, maintaining system stability and reliability

#grid(
  columns: (1fr, auto),
  gutter: 1em,
  [
    #text(weight: "bold", size: 11pt)[Python / AI Software Engineer] \
    #text(style: "italic", size: 10pt, fill: rgb("#555555"))[Freelance • Full-time • Remote]
  ],
  [
    #align(right)[
      #text(weight: "bold", size: 10pt)[January 2022 – January 2024] \
      #text(size: 9pt, fill: rgb("#666666"))[Kyiv, Ukraine]
    ]
  ],
)

#v(0.4em)

#set list(marker: [•], indent: 0.5em, body-indent: 0.5em)
- Fixed critical performance bugs
- Improved conversion on marketing websites
- Integrated A/B testing and feature flags
- Delivered key product features

#v(1.2em)

// Education Section
#text(size: 14pt, weight: "bold")[Education]
#v(0.5em)

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

#v(0.4em)

- Completed comprehensive computer science curriculum with strong academic performance
- Gained expertise in software engineering principles, best practices, and modern development methodologies
- Developed strong foundation in algorithms, data structures, system design, and problem-solving

#v(1.2em)

// Technical Skills Section
#text(size: 14pt, weight: "bold")[Technical Skills]
#v(0.5em)

#set par(justify: false)
#text(size: 10pt)[
  *Languages:* Python, Golang, JavaScript, TypeScript, SQL \
  *Frameworks & Libraries:* FastAPI, Django, React.js, Next.js, Anchor Framework \
  *Cloud & Infrastructure:* Google Cloud Platform, AWS, Firebase, Docker, CI/CD \
  *Databases & Storage:* PostgreSQL, Redis, Google BigQuery \
  *AI & Machine Learning:* Vertex AI, LLM, LangChain \
]
