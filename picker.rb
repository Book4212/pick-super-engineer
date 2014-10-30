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

def featureC
  print "Search : "
  name = gets.chomp # get name that you search.

  # open file and put all names into list.
  file = File.new("engineer.txt", "r") # open filr "name.txt".
  File.readlines(file).each do |l| 
    if l.upcase.match "#{name}".upcase
      puts l   # show name that similar name that you search.
    end
  end  

end

featureC
