local name = os.getComputerLabel()
local id = os.getComputerID()
local fuel = turtle.getFuelLevel()
 
print("Label: " .. name)
print("ID: " .. id)
print("Fuel: " .. fuel)