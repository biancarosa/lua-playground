local MyClass = {}

function MyClass:new()
    self._name = 'rawr'
    print(self._name)
end 

function MyClass:bark()
    print('bark')
    print(self._name)
end

print('1')
print(MyClass:new())
print('2')
print(MyClass:bark())
print('3')
local dinosaur = MyClass:new()
print(dinosaur)
