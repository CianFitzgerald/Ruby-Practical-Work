require_relative 'age'
require_relative 'name'

#prompt the user to enter a name and age and check these using the two methods.
def get_description
  p "what is your first name?"
  name = gets.chomp
  puts "what is your age?"
  age = gets.chomp.to_i
  if name_check(name) && age_check(age)
    then p "welcome!"
  else p "Access denied!"
  end
end

get_description
