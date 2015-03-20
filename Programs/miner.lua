 
--miner will dig 1 wide, 6 tall
--length is set by number
--made to work well with chain of turtles
 
tArgs = { ... }
local length = tArgs[1]
local length = length
 
print("Mining length: " .. length)
 
local length = length / 2
 
 
for i = 1,length do
  for i = 1,5 do
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
  for i = 1,5 do
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