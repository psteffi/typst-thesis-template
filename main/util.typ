#let pageref(label) = context {
  let loc = locate(label)
  let nums = counter(page).at(loc)
  link(loc, numbering(loc.page-numbering(), ..nums))
}

#let todo(body) = box(
  fill: red.lighten(80%),
  inset: 6pt,
  radius: 4pt,
  text(red.darken(20%))[TODO: #body],
)
