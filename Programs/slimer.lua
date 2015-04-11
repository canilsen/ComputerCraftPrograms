term.clear()
print("Hello my name is SlimeChopper. Do not Disturb!")
 
function chop()
  turtle.dig()
  turtle.forward()
  turtle.digUp()
  turtle.up()
  turtle.digUp()
  turtle.up()
  turtle.digUp()
  turtle.up()
  turtle.digUp()
  turtle.up()
  turtle.digUp()
  turtle.up()
  turtle.digUp()
  turtle.down()
  turtle.down()
  turtle.down()
  turtle.down()
  turtle.down()
  turtle.back()
end
 
function replant()
  turtle.select(2)
  turtle.place()
end
 
function checkfuel()
  if turtle.getFuelLevel() < 50 then
    print("Fuel me up bro!")
    return false
  else
    return true
  end
end
 
 
while checkfuel() == true do
  turtle.select(1)
  if turtle.compare() == true then
    chop()
    replant()
    sleep(60)
  end
end