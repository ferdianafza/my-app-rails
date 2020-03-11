class Api::V1::BooksController < ApplicationController
  def index
  	book = Book.all.order(created_at: :desc)
    render json: book
  end

  def create
    book = Book.create!(book_params)
    if book
      render json: book
    else
      render json: book.errors
    end
  end

  def edit
    if book
      render json: book
    else
      render json: book.errors
    end
  end

  def show
    if book
      render json: book
    else
      render json: book.errors
    end
  end

  def destroy
    book&.destroy
    render json: { message: 'Book deleted!' }
  end

  def update
    book.update(book_params)
    render json: book
  end


  private

   def book_params
     params.permit(:title, :author, :price)
   end

   def book
    @book ||= Book.find(params[:id])
   end
end
