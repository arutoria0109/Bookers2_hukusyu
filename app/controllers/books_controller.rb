class BooksController < ApplicationController
  def index
    @books = Book.all
    @book = Book.new
  end
  
  def create
    @book = book.new(book_params)
  end
  
  
  
  private
  
  def book_params
    params.require(:book).permit(:title, :body)
  end
  
end
