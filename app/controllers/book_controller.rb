class BookController < ApplicationController
  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)

      respond_to do |format|
    if @event.save
      format.html { redirect_to @book, notice: 'Book was successfully created.' }
      format.json { render :show, status: :created, location: @book }
  else
    format.html { render :new }
    format.json { render json: @book.errors, status: :unprocessable_entity }
  end
end
end

  def update
  end

  def show
  end

  def destroy

  end
end
