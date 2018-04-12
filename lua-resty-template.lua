local template = require "resty.template"

print('Using template.new')
local view = template.new "view.html"
view.message = "Hello, World!"
view:render()
print('\n')

print('Using template.render')
template.render("view.html", { message = "Hello, World" })
print('\n')

print('Using template.render with local string')
local string_template = "{{message}}"
template.render(string_template, { message = "Hello, World" })
print('\n')

print('Compiling local string')
local string_template = "hello im a template"
local tpl = template.compile(string_template)
print(tpl{message = 'oi'})
print('\n')