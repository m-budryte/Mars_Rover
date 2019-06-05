require './lib/control_unit.rb'
control_unit = Control_unit.new
# ^The control unit object instantiated. Between the hash lines below you can add your instructions for rovers.
# If you run this code in console (ruby playground.rb), the output will be a final location of Rovers.
# The example has been added below

# Please, separate input lines by \n
# 1st line: plateau's upper corner coordinates
# 2nd line: position of the 1st rover
# 3rd line: instructions for the 1st rover
# 4th line: position of the 2nd rover
# 5th line: instructions for the 2nd rover
#########################################################
control_unit.load_instructions("100 100\n25 4 E\nMMMMRMMLMRM\n29 15 N\nLMLMMRMLMMMM")
#########################################################
control_unit.parse_instructions
puts control_unit.launch_squad
