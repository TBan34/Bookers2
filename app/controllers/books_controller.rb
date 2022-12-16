class BooksController < ApplicationController

  def new
    @book=Book.new
  end

  def create
    @book=Book.new(book_params)
    book.save
    redirect_to "/top"
  end

  def index
    @books=Book.all
  end

  def show
    @book=Book.find(params[:id])
  end

  def edit
    @book=Book.find(params[:id])
  end

  def update
    @book=Book.find(params[:id])
    @book.update
    redirect_to books_path
  end

  def destroy
    @book=Book.find(params[:id])
    @book.destroy
    redirect_to :index
  end

  private

  def book_params
    params.require(:book).permit(:title, :body, :user_id)
  end

end
