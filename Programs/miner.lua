--[[
miner.lua
Created by Canilsen
Edited by Awade

This is designed for a Computercraft's Turtle, a mod for Minecraft

This will make the Turtle dig a 1 wide tunnel
The program takes 2 arguments, 1 required and 1 optional
	arg[1] is the length to mine
	arg[2] is the height - default: 6
--]]

--[[
Arguments
--]]

tArgs = { ... }
local length -- The length the Turtle will mine
local height -- How many blocks high the Turtle will mine

length = tArgs[1]
if tArgs[2] == nil then --Sets the hight the Turtle will dig
	height = 6 --Default value if non given
else
	height = tArgs[2]
end

--[[
Functions
--]]

function clearScreen()
	term.clear()
	term.setCursorPos(1, 1)
end

clearScreen()
print("Mining length: " .. length)
print("Mining height: " .. height)
 
local length = length / 2
 
for i = 1,length do
  for i = 1,(height - 1) do
    while turtle.detectUp() == true do
      turtle.digUp()
      sleep(0.5)
    end
    turtle.up()
  end
  while turtle.detect() == true do
    turtle.dig()
    sleep(0.5)
  end
  turtle.forward()
  turtle.placeUp()
  while turtle.detect() == true do
    turtle.dig()
    sleep(0.5)
  end
  turtle.forward()
  turtle.placeUp()
  turtle.back()
  for i = 1,(height - 1) do
    turtle.digDown()
        turtle.down()
        turtle.dig()
  end
  if turtle.detectDown ~= true then
    turtle.select(1)
    turtle.placeDown()
  end
  turtle.forward()
  if turtle.detectDown ~= true then
    turtle.select(1)
    turtle.placeDown()
  end
end
