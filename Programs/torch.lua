--miner will dig 1 wide, 6 tall
--length is set by number
--made to work well with chain of turtles
 
tArgs = { ... }
local length = tArgs[1]
local length = length + 1
 
print("Torching length: " .. length)
 
local length = length / 5
 
turtle.up()
for i = 1,length do
  sleep(24)
  turtle.digUp()
  turtle.forward()
  turtle.forward()
 
  turtle.select(2)
  turtle.placeUp()
  turtle.select(1)
  turtle.placeDown()
  turtle.digUp()
 
  turtle.forward()
  turtle.forward()
  turtle.forward()
 
  turtle.select(2)
  turtle.placeUp()
end
turtle.digUp()
turtle.down()