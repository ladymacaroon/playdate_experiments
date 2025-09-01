angle = math.random() * math.pi
x_coord = 25 * math.cos(angle)
y_coord = 25 * math.sin(angle)

line = {x_coord, y_coord, -x_coord, -y_coord}

rotation = 90

rotated_x = (x_coord * math.cos(rotation)) - (y_coord * math.sin(rotation))
rotated_y = (x_coord * math.sin(rotation)) + (y_coord * math.cos(rotation))

rotated_x2 = ((-x_coord) * math.cos(rotation)) - ((-y_coord )* math.sin(rotation))
rotated_y2 = ((-x_coord) * math.sin(rotation)) + ((-y_coord) * math.cos(rotation))

print(line[3].." "..line[4])
print(rotated_x2.." "..rotated_y2)
