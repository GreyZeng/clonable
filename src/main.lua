-- 这里是行注释
--[[
这里是块注释
1. 说明1
2. 说明2
]]
b = 3
local function val_sample()
  local a = [[alo
              123
              sdfasd
            ]]
  print(a)
  -- 访问没有声明的变量，就是nil
  print(b)
end

-- 循环示例
local function loop_sample()
  local i = 0
  local max = 10
  while i <= max do
    print(i)
    i = i + 1
  end
end

local function for_sample()
  local sum = 0
  for i = 200,1,-2 do
    sum = sum + i
  end
  print(sum)
end

local function if_sample()
  local age = 41
  local sex = 'Male'
  if age == 40 and sex == 'Male' then
    print("男人40一枝花")
  elseif age > 60 and sex ~= "Female" then
    print("old man without country!")
  elseif age < 20 then
    io.write("too young, too naive !\n")
  else
    print("Your age is "..age)
  end
end

local function fun_sample()
  local function add(x, y)
    return x + y
  end
  local addResult = add(3,23)
  print(addResult)
end

local function anonymous_sample()
  local i = 0
  return function()
    i = i + 1
    return i
  end
end

local function mult_result_sample()
  local name, age  = "zhangsan",33
  print(name,age)
end

local function mult_return_sample()
  local function is_luck(name)
    return name == "Star", name
  end
  local bol, name = is_luck("Star")
  print(bol, name)
end

local function map_sample()
  local student = {name='zs',age=18}
  student.age=35
  print(student.name,student.age)
  print(student)
end

local function arr_sample()
  local  arr = {"abc", 300, "ss",function() print("xxx") return 1 end}
  print(arr[4]())
end

local function iterate_sample()
  local arr = {"zhangsan","lisi","wangwu"}
  for k, v in pairs(arr) do
    print(k,v)
  end
end

local function oop_sample()
  local person = {name='zhangsan',age = 18}
  function  person.eat(food)
    print(person.name .." eating "..food)
  end
  person.eat("rice")
end
-- val_sample()
-- loop_sample()
-- if_sample()
-- for_sample()
-- fun_sample()
-- print(anonymous_sample()())
-- mult_result_sample()
-- mult_return_sample()
-- map_sample()
-- arr_sample()
-- iterate_sample()
-- oop_sample()
