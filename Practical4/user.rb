#User class with 6 attributes and two methods
class User
  attr_accessor :name, :address, :uniqueid, :dob, :currently_borrowing, :late_returns
  def initialize(name, address, uniqueid, dob, currently_borrowing, late_returns)
    @name  = name
    @address = address
    @uniqueid = uniqueid
    @dob = dob
    @currently_borrowing = currently_borrowing
    @late_returns = late_returns
  end

  #method to print the users details
  def print_user
    puts "//----User details----//" +"\n" +  "name:#{@name}" + "\n" + "id:#{@uniqueid}" + "\n" + "Late Returns:#{@late_returns}" + "\n" + "currently borrowing:#{@currently_borrowing}" + "\n" + "//--------------------//"
  end


  #method to be used for a borrowing event
  #adds 1 to the users currently borrowed total after a book has been borrowed
  def user_borrowing
    self.currently_borrowing += 1
  end

end