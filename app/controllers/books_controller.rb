class BooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :destroy]

  # GET /books
  # GET /books.json
  def index

if params[:term].present?
@books = Book.where('title LIKE ? ',"%#{params[:term]}%")
elsif params['category'].blank? or params['category']['id'].blank? 
@books = Book.all 
elsif (!params['category'].blank? or !params['category']['id'].blank?) && params[:term].blank?
category = Category.find(params['category']['id']) 
@books = category.books 
end
end 
  
  # GET /books/1
  # GET /books/1.json
  def show

  end

  # GET /books/new
  def new
    @book = Book.new
    @categories = Category.all.map{ |c| [c.name, c.id] }
  end

  # GET /books/1/edit
  def edit
     # @book = Book.find(params[:id])
     @categories = Category.all.map{ |c| [c.name, c.id] }
  end

  # POST /books
  # POST /books.json
  def create
    @book = Book.new(book_params)
    @book.category_id = params[:category_id]
    if @book.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  # PATCH/PUT /books/1
  # PATCH/PUT /books/1.json
  def update
    @book.category_id = params[:category_id]
    if @book.update(book_params)
      redirect_to book_path(@book)
    else
      render 'edit'
    end
  end

  # DELETE /books/1
  # DELETE /books/1.json
  def destroy
    @book.destroy
    respond_to do |format|
      format.html { redirect_to books_url, notice: 'Book was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book
      @book = Book.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def book_params
      params.require(:book).permit(:title, :number_of_pages, :author, :published_date, :category_id, :term,:description)
    end
end
