class BooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :destroy]

  # GET /books
  # GET /books.json
  def index
    @books = Book.order(:title).limit(50)
  end

  def search
    respond_to do |format|
      format.html
      format.json { @books = Book.search(params[:term]) }
    end
  end
end
