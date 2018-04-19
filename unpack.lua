local template = require "resty.template"

local dictionary = { fruit = "banana", candy = "lollipop" }

print("Lets Print.")
print(dictionary.fruit)
print(dictionary.candy)
print("Alright.")

local function do_stuff(args)
    print(args.fruit)
    print(args.candy)
end

local function compile(...)
    local string_template = "hello im a template {{fruit}} {{candy}}"
    local tpl = template.compile(string_template)
    print(tpl{....fruit})
    print(tpl{unpack(...)})
end

print("Now do stuff and print")
do_stuff(dictionary)
print("Cool.")

print("Let's compile a template?")
compile(dictionary)