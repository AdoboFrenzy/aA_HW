class BooksController < ApplicationController
  def index
    @books = Book.all

    render :index
  end

  def new
    render :new
  end

  def create #from RESTful controller demo @ 13:50
    new_book_to_be_added = Book.new(book_params)
    if new_book_to_be_added.save
      redirect_to action: :index
    else
      book.errors.full_messages
    end

  end

  def destroy
    book_to_be_obliterated = Book.find(params[:id]) #'id' from parameters
    book_to_be_obliterated.destroy #active record method to destroy an object

    redirect_to action: :index
    # fail
  end

  private
  def book_params
    params.require(:book).permit(:title, :author)
  end
end
