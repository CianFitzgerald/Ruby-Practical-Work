class Vehicle
  attr_accessor :registration_no, :owner, :vehicle_type, :engine_size, :number_of_doors, :top_speed, :new
    def initialize(registration_no, owner, engine_size, number_of_doors, top_speed)
      @registration_no = registration_no
      @owner = owner
      @engine_size = engine_size
      @number_of_doors = number_of_doors
      @top_speed = top_speed
      @vehicle_type = "Car"
      @new = true
    end

  def what_year?
    self.registration_no[0..1]
  end

  def owner_name
    puts self.owner
  end

  def is_a?
    puts "this vehicle is a" + self.vehicle_type
  end
end

class Car < Vehicle
    def initialize(registration_no, owner, engine_size, number_of_doors)
      @registration_no = registration_no
      @owner = owner
      @engine_size = engine_size
      @number_of_doors = number_of_doors
    end

  def is_it_fast?
    if self.engine_size > 1500
      puts "It's quick!"
    else
      puts "Could be faster.."
    end
  end
end

class Ford < Car

  def what_ford?
    puts self.type
  end

  def is_it_new
    if self.new
      puts "it's brand new!"
    else
      puts "Nope! it was manufactured in 20" + self.what_year?
    end
  end

end

my_vehicle = Vehicle.new("08-C-2021", "Cian Fitz", 1000, 4, 150)
his_car = Car.new("21-C-2021", "Patrick", 2500, 5)
their_ford = Ford.new("15-C-2021", "Gavin Fitz", 1200, 4)

p my_vehicle
p his_car
p their_ford

my_vehicle.owner_name
their_ford.owner_name

his_car.is_it_fast?

#note how the is_it_new method works for the ford subclass but not for the superclass
their_ford.is_it_new
my_vehicle.is_it_new
