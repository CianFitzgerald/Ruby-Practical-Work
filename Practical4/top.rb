#adding relevant required files
require_relative 'book.rb'
require_relative 'user.rb'
require_relative 'library.rb'

#creating book instances
book1 = Book.new(title = "A Visit From the Goon Squad",author ="Jennifer Egan",uniqueid=12345,available="Yes",year_of_release = "2010", rating = 8)
book2= Book.new(title = "My Brilliant Friend",author ="Elena Ferrante",uniqueid=12346,available="No",year_of_release = "2011", rating = 9)
book3 = Book.new(title = "Gone Girl",author ="Gillian Flynn",uniqueid=12347,available="Yes",year_of_release = "2012", rating = 9)
book4 = Book.new(title = "Americanah",author ="Chimamanda Ngozi Adichie",uniqueid=12348,available="No",year_of_release = "2013", rating = 7)
book5 = Book.new(title = "Life After Life",author ="Kate Atkinson",uniqueid=12349,available="Yes",year_of_release = "2013", rating = 9)

#creating an array of the book instances
book_array = [book1,book2,book3,book4,book5]

#creating user instances
user1 = User.new(name = "Cian" ,address = "Cork",uniqueid= 54321,dob= "22/11/1997",currently_borrowing = 4, late_returns = 0)
user2 = User.new(name = "Laura" ,address = "Dublin",uniqueid= 54322,dob= "25/01/1994",currently_borrowing = 3, late_returns = 2)
user3 = User.new(name = "Matt" ,address = "Limerick",uniqueid= 54323,dob= "20/11/1990",currently_borrowing = 2, late_returns = 5)

#creating an array of the user instances
user_array = [user1,user2,user3]

#creating the library instance
library = Library.new(borrowed = 3,available = 2)

#mehtod to iterate over the array of books and find the available titles
def currently_available(array)
  puts "available titles:"
  array.each do |item|
    if item.available == "Yes"
      puts item.title
    end
  end
end

#method to invoke a borrowing event, this calls on all the methods created in the other classes
#in order to add and deduct from the relevant attributes and print all relevant information
#regarding the user, the book borrowed and the current state of the library
def borrowing_event(lib, user, book)
  if book.check_available == true
    p "Success! the borroing event is complete"
    lib.library_borrowing
    user.user_borrowing
    book.book_borrowing
    user.print_user
    book.print_book
    lib.print_lib
  else
    puts "This title is not currently available, try a different one!"
  end
end

#running programme
library.print_lib
borrowing_event(library,user1,book2)
currently_available(book_array)
borrowing_event(library,user1,book1)
p book1.check_available


