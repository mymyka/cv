// ─────────────────────────────────────────────
//  Portfolio — Projects Showcase
// ─────────────────────────────────────────────

#set page(
  width: 210mm,
  height: auto,
  margin: (x: 0.6in, y: 0.6in),
)
#set par(justify: true, leading: 0.65em)
#set text(font: "Linux Libertine", size: 10pt)

// ── Helpers ──────────────────────────────────
#let divider = {
  v(1em)
  line(length: 100%, stroke: 0.5pt + rgb("#cccccc"))
  v(1em)
}

#let soft-divider = {
  v(1em)
  line(length: 100%, stroke: 0.5pt + rgb("#eeeeee"))
  v(1.2em)
}

#let link-badge(label, url) = link(url)[
  #h(3pt)
  #underline()[
    #text(fill: blue, weight: "bold", size: 9pt)[↗ #label]
  ]
  #h(3pt)
]

// ── Project entry ─────────────────────────────
#let project-card(
  name:         "",
  company:      "",
  role:         "",
  description:  "",
  achievements: (),
  screens:      (),
  links:        (),
) = {
  grid(
    columns: (1fr, auto),
    gutter: 1em,
    [
      #text(weight: "bold", size: 24pt)[#name] \
      #text(style: "italic", size: 10pt, fill: rgb("#555555"))[#company • #role]
    ],
    [
      #align(right)[
        #if links.len() > 0 {
          links.map(((lbl, url)) => link-badge(lbl, url)).join([  ])
        }
      ]
    ],
  )

  v(0.4em)

  if description != "" {
    text(size: 10pt, fill: rgb("#333333"))[#description]
    v(0.4em)
  }

  if screens.len() > 0 {
    let shown = screens.slice(0, calc.min(screens.len(), 3))
    grid(
      columns: (1fr,),
      gutter: 8pt,
      ..shown.map(p =>
        box(
          clip: true,
          radius: 4pt,
          stroke: 0.5pt + rgb("#dddddd"),
          image(p, width: 100%),
        )
      )
    )
    v(0.5em)
  }

  set list(marker: [•], indent: 0.5em, body-indent: 0.5em)
  for a in achievements [
    - #text(size: 10pt)[#a]
  ]

  soft-divider
}

// ══════════════════════════════════════════════
//  DOCUMENT BODY
// ══════════════════════════════════════════════

#align(center)[
  #text(size: 20pt, weight: "bold")[Project Showcase]
  #v(0.2em)
  #text(size: 10pt, fill: rgb("#666666"))[
    A curated overview of my engineering work — backend, full-stack, performance, and architecture.
  ]
]

#divider

#project-card(
  name: "KnetMiner (Saas for biology research)",
  company: "Empat",
  role: "Software Engineer",
  description: "KnetMiner is an AI-powered bioinformatics platform that helps scientists accelerate gene and trait discovery. It uses deep knowledge graphs spanning genomics, genetics, and scientific literature across multiple species, combined with AI search assistants that mirror the scientific method to surface biological insights faster.",
  achievements: (
    "Fixed critical bugs in existing codebase",
    "Refactored overly complicated code into simple, maintainable solutions",
  ),
  screens: ("assets/knetminer-web.png",),
  links: (
    ("Website", "https://knetminer.com/"),
  ),
)

#project-card(
  name: "BigSister AI CRM (Saas for sales teams)",
  company: "Empat",
  role: "Fullstack AI Developer",
  description: "BigSister AI is a sales intelligence CRM — \"Moneyball for Sales\" — that uses AI to help sales teams track activity, coach performance, and close deals more effectively. It integrates with call recording tools and provides managers with data-driven insights into rep performance and pipeline health.",
  achievements: (
    "Fixed bugs in data pipeline and improved system reliability",
    "Developed AI-powered notes feature for salesman activity tracking",
    "Eliminated third-party service dependency, reducing costs and simplifying logic",
  ),
  screens: ("assets/bigsister-web.png",),
  links: (
    ("Website", "https://www.big-sister.ai/"),
  ),
)

#project-card(
  name: "ShredSpots (Startup for street sports enthusiasts)",
  company: "Empat",
  role: "Fullstack AI Developer",
  description: "ShredSpots is a community-driven mobile app for street sports enthusiasts — skaters, BMX riders, and scooter riders — to discover, share, and review skate spots around the world. Users can browse a map of locations, upload photos, and contribute spot details to help the community find the best places to shred.",
  achievements: (
    "Optimized critical requests from >20 seconds to <1 second",
    "Migrated high-load logic to efficient SQL queries",
    "Refactored complex code to simple, maintainable solutions",
    "Implemented AI-powered auto-filling for spot information",
    "Migrated project from Firebase to custom backend infrastructure",
    "Introduced comprehensive testing",
  ),
  screens: ("assets/shredspots-web.png", "assets/shredspots-google-play.png"),
  links: (
    ("Website", "https://www.shredspots.com/"),
    ("App Store", "https://apps.apple.com/us/app/shredspots-find-skate-spots/id1462604065"),
    ("Google Play", "https://play.google.com/store/apps/details?id=com.freeto.free2shred&hl=en"),
  ),
)

#project-card(
  name: "Circleup (Saas for productivity)",
  company: "Empat",
  role: "Full Stack Developer",
  description: "Circleup is a free social scheduling app that makes it easy to coordinate catch-ups with friends by sharing availability and finding times that work for everyone. It syncs with existing calendars to eliminate the back-and-forth of planning social events.",
  achievements: (
    "Resolved backend and frontend bugs to improve application stability",
    "Worked with Django backend and React.js frontend technologies",
  ),
  screens: ("assets/circleup-web.png", "assets/circleup-google-play.png"),
  links: (
    ("Website", "https://www.circleup.ai/"),
    ("Google Play", "https://play.google.com/store/apps/details?id=app.circleup.ai&hl=en"),
  ),
)

#project-card(
  name: "House Caddy (Home management mobile app)",
  company: "Empat",
  role: "Software Engineer",
  description: "House Caddy is a home management mobile app that helps homeowners organize, track, and maintain their property. It serves as a digital assistant for managing household tasks, maintenance schedules, and home-related information all in one place.",
  achievements: (
    "Led project estimation and backend architecture design",
    "Enforced simple, readable code conventions and architecture patterns",
    "Implemented CI/CD pipeline with type checker, linter, and formatter",
    "Protected codebase from unnecessary abstractions during feature development",
    "Achieved easy developer onboarding, decoupled modules, and fast dev pace",
  ),
  screens: ("assets/house-caddy-google-play.png",),
  links: (
    ("Google Play", "https://play.google.com/store/apps/details?id=com.houseCaddy.app&hl=en"),
  ),
)