=begin
  Function pick_engineer use for random name of engineer
=end
def pick_engineer
  file = File.open("engineers.txt") # open text file
  name_list = Array.new # create new list for store all name is readed
  file.each {|i|
    name_list.push(i) # store each name into list
  }
  name_list[rand(name_list.length)] # return random name
end

def featureA()
  chose = Array.new()
  addot = Array.new()
  # push name from text file to array data
  puts chose = pick_engineer
  # random name from array data
  addot = chose.split(' ')

  formatter1 = "%s.%s"
  formatter2 = "%s.%s.%s"
  formatter3 = "%s.%s.%s.%s"
  if addot.length == 2
    puts formatter1 % [addot[0], addot[1]]
  end
  if addot.length == 3
    puts formatter2 % [addot[0], addot[1], addot[2]]
  end
  if addot.length == 4
    puts formatter3 % [addot[0], addot[1], addot[2], addot[3]]
  end
end

featureA()
