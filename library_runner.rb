require 'pry-byebug'
require_relative 'library.rb'
require_relative 'book.rb'
require_relative 'library_members.rb'

#------ create a library ------#

library = Library.new("CodeClan Library")

#------ create book ------#

book_1 = Book.new({title: "Errand", genre: "Fantisy"})
library.add_book(book_1)


library.add_book(Book.new(title: "The Hobbit", genre: "Fantasy"))
library.add_book(Book.new(title: "Feersum Endjinn", genre: "Science Fiction"))
library.add_book(Book.new(title: "Histories", genre: "History"))
library.add_book(Book.new(title: "To Kill a Mockingbird", genre: "Fiction"))
library.add_book(Book.new(title: "A Brief History of Time", genre: "Non-Fiction"))

#binding.pry;''

#------ lits books

puts "All books: #{library.list_all_books}"
puts"--------------------------------------------------"

#------ create person -------#

person_1 = Person.new("Nick")

library.add_person(person_1)

library.add_person(Person.new('Fred'))
library.add_person(Person.new('Wilma'))
library.add_person(Person.new('Barney'))
library.add_person(Person.new('Betty'))

#binding;pry''

#------ lend book ------#

library.lend("Wilma", "The Hobbit")
library.lend("Barney", "Histories")
library.lend("Fred", "A Brief History of Time")

#------ list people ------#

puts "All library members: #{library.list_people}"
puts"--------------------------------------------------"

#------ return book ------#

library.return_book_to_library("Wilma", "The Hobbit")

#binding.pry;''
#------ list borrowed books ------#

puts "Books out on loan: #{library.list_borrowed_books}"
puts"--------------------------------------------------"

#------ find who has a book -----#
























