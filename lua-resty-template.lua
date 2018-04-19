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

print('Compiling with error')
local string_template = "hello im a wrong {{a['}} template"
local status = pcall(function () template.precompile(string_template) end)
print(status)
print('\n')

print('Compiling without error')
local string_template = "hello im a wrong {{a}} template"
local status = pcall(function () template.precompile(string_template) end)
print(status)