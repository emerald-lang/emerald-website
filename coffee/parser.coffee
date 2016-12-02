#
# Emerald Language Website
# Copyright 2016, Emerald
#
# NOTE: this is pretty bad, just search and replace for keywords,
# the semantic knowledge willl come in when we have the atom
# syntax highlighter, and we use the highlighting package.
#

$ ->
  # Get the emerald code on the page
  code = $ '#main-code'
  text = code[0].innerText

  # Regex for keywords - (this is bad I know)
  keywords = new RegExp 'scripts|styles|metas|each|as', "g"
  tags = new RegExp 'html|section|main', "g"
  arrows = new RegExp '->|=>|~>', "g"

  # Parse ard replace keywords - (also bad, I know)
  new_text = text.replace(tags, '<span class="syntax-tag">html</span>')
                 .replace(keywords, '<span class="syntax-keyword">keyword</span>')
                 .replace(arrow, '<span class="syntax-arrow"></span>')
                 .replace(attr, '<span class="syntax-attr"></span>')
                 .replace(vars, '<span class="syntax-attr"></span>')
                 .replace(strings, '<span class="syntax-string"></span>')

  # Change the inner html with the new parsed one
  code[0].innerHTML = new_text
