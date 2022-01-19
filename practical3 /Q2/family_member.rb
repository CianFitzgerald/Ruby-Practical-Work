#family member class with five attributes and two methods to check if the instance is a parent or a child
class FamilyMember
  attr_accessor :name, :sex, :status, :age, :type
  def initialize(name,sex,status,age,type)
    @name  = name
    @sex = sex
    @status = status
    @age = age
    @type = type
  end

  def parent?
    if self.type == "father" or self.type == "mother"
      then true
    else false
    end
  end

  def child?
    if self.type == "son" or self.type == "daughter" or self.type == "dog"
    then true
    else false
    end
  end
end

#creating the five instances
fm1 = FamilyMember.new("Cian",sex ="Male",status="married",age=27,type = "father" )
fm2 = FamilyMember.new("Sarah",sex ="Female",status="married",age=32,type = "daughter")
fm3 = FamilyMember.new("John",sex ="Male",status="single",age=23,type = "son")
fm4 = FamilyMember.new("Joe",sex ="Male",status="underage",age=4,type = "mother")
fm5 = FamilyMember.new("bobby",sex ="Female",status="single",age=23,type = "dog")

#testing the child and parent methods
p fm1.child?
p fm2.parent?

#part 3
# creating the array of family members
family_array = [fm1,fm2,fm3,fm4,fm5]

#function to iterate over the array (using each and a block) and print the name and status of each member
def print_array(array)
  array.each{|item| p item.name, item.status}
end
print_array(family_array)



#part 4
# function to iterate over the array (using do) and print all attributes of the member
def print_array_two(array)
  array.each do |item|
    p item.name, item.sex, item.status, item.age, item.type
  end
end
print_array_two(family_array)

