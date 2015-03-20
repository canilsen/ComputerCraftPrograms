tArgs = { ... }
length = tArgs[1]
 
turtle.select(1)
 
for i = 1,length do
 
  if i == 65 then
    turtle.select(2)
  elseif i == 129 then
    turtle.select(3)
  elseif i == 193 then
    turtle.select(4)
  elseif i == 257 then
    turtle.select(5)
  end
   
  turtle.up()
  turtle.placeDown()
end