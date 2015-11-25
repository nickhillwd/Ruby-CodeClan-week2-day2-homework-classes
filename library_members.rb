
class Person

  attr_reader :name, :books

 def initialize(name)
    @name = name.capitalize
    @books = {}
  end

  def pretty_string
    "#{@name} has #{@books.size} borrowed at this moment in time."
  end

  #def pretty_string2
  #  "#{@name} has borrowed #{book.title}"
  # end

  def borrow(book)
    @books[book.title] = book
  end

  def return_book(book_title)
    book = @books.delete(book_title)
  end

  def list_current_books
    @books
  end
  
end