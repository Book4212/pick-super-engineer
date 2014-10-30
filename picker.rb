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
