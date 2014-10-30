
def pick_engineer
  name = [] # list store all name
  File.open("engineers.txt").each { |n| name.push(n) } # open text file and push all name to list
  name[rand(name.length)] # return name in text file which random
end

def featureB
  subN = pick_engineer.split(' ') # split sub name with space bar
  subN[0] + ' ' + subN[1][0] + '...' # return name with first next letter with '...'
end

puts featureB # call function featureB

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

