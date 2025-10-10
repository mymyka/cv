#import "@preview/modern-cv:0.8.0": *

#let cv-data = yaml("info.yaml")

#show: resume.with(
  author: (
    firstname: cv-data.personal_info.first_name,
    lastname: cv-data.personal_info.last_name,
    email: cv-data.personal_info.email,
    homepage: cv-data.personal_info.linkedin,
    phone: cv-data.personal_info.phone,
    address: cv-data.personal_info.location,
    positions: cv-data.personal_info.positions,
  ),
  profile-picture: image("profile.jpg"),
  date: datetime.today().display(),
  language: "en",
  colored-headers: true,
  show-footer: false,
  paper-size: "us-letter",
)

= Summary
#resume-item[
  #cv-data.summary
]

= Experience
#for exp in cv-data.experience [
  #resume-entry(
    title: exp.title,
    location: exp.location,
    date: exp.start_date + " - " + exp.end_date,
    description: exp.company + " · " + exp.employment_type + " · " + exp.work_mode,
  )
  #resume-item[
    #for responsibility in exp.responsibilities [
      - #responsibility
    ]
  ]
]

= Projects
#for project in cv-data.projects [
  #resume-entry(
    title: project.name,
    location: project.company,
    date: project.start_date + " - " + project.end_date,
    description: project.role,
  )
  #resume-item[
    #for achievement in project.achievements [
      - #achievement
    ]
  ]
]

= Skills
#resume-skill-item(
  "Programming Languages",
  cv-data.skills.programming_languages.map(lang => if lang in ("Python", "Golang") { strong(lang) } else { lang }),
)

#resume-skill-item(
  "Frameworks & Technologies",
  cv-data.skills.frameworks_and_technologies.map(tech => if tech in ("FastAPI", "Django") { strong(tech) } else {
    tech
  }),
)

#resume-skill-item(
  "Cloud & Infrastructure",
  cv-data.skills.cloud_and_infrastructure.map(tech => if tech in ("Google Cloud Platform", "AWS") {
    strong(tech)
  } else { tech }),
)

#resume-skill-item(
  "Databases & Tools",
  cv-data.skills.databases_and_tools.map(db => if db == "PostgreSQL" { strong(db) } else { db }),
)

#resume-skill-item(
  "Blockchain",
  cv-data.skills.blockchain,
)

= Education
#for edu in cv-data.education [
  #resume-entry(
    title: edu.institution,
    location: edu.location,
    date: edu.start_date + " - " + edu.end_date,
    description: edu.degree + ", " + edu.field,
  )
  #resume-item[
    #for highlight in edu.highlights [
      - #highlight
    ]
  ]
]
