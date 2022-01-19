#Library class with two attributes and two methods
class Library
  attr_accessor :borrowed, :available
  def initialize(borrowed, available)
    @borrowed  = borrowed
    @available = available
  end

  #method to print out the libraries state
  def print_lib
    puts "//-----Library State-----//"+"\n" + "Borrowed books:#{@borrowed}" + "\n" + "Available books:#{@available}" + "\n" + "//--------------------//"
  end

  #method to be used for a borrowing event
  #adds one to the library states total borrowed and deducts one from the total available
  def library_borrowing
    self.borrowed += 1
    self.available -= 1
  end
end