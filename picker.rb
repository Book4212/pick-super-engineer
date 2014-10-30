
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
