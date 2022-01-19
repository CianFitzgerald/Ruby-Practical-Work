#the book class with 6 attributes and two methods
class Book
  attr_accessor :title, :author, :uniqueid, :available, :genre, :rating
  def initialize(title, author, uniqueid, available, genre, rating)
    @title  = title
    @author = author
    @uniqueid = uniqueid
    @available = available
    @genre = genre
    @rating = rating
  end

  #prints out the details of a selected book
  def print_book
    puts "//----book details----//" +"\n" + "Title:#{@name}" + "\n" + "Author:#{@author}" + "\n" + "Rating:#{@rating}" + "\n" + "//--------------------//"
  end

  #method to be used for a borrowing event
  #checks if the book is available and changes the availability of the book to No after th borrowing event has occured
  def book_borrowing
    if self.available == "Yes"
      self.available = "No"
    else
      puts "Book not currently available"
    end
  end

  #method to check if a book is available
  # #method is used for a borrowing event
  def check_available
    if self.available == "Yes"
      true
    else
      false
    end
  end

end



