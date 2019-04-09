class UserBooksController < ApplicationController
  before_action :set_user_book, only: [:show, :edit, :update, :destroy]

  # GET /user_books
  # GET /user_books.json
  def index
    @user_books = UserBook.all
  end

  # GET /user_books/1
  # GET /user_books/1.json
  def show
  end

  # GET /user_books/new
  def new
    @user_book = UserBook.new
  end

  # GET /user_books/1/edit
  def edit
  end

  # POST /user_books
  # POST /user_books.json
  def create
    # @user_book = UserBook.new(user_book_params)

    # respond_to do |format|
    #   if @user_book.save
    #     format.html { redirect_to @user_book, notice: 'User book was successfully created.' }
    #     format.json { render :show, status: :created, location: @user_book }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @user_book.errors, status: :unprocessable_entity }
    #   end
    # end

    @book = Book.find params[:id]
     if params[:read]
      @user_book = @book.user_books.build user_id: current_user.id, read: 1 
    end
    if params[:favorite]
      @user_book = @book.user_books.build user_id: current_user.id, favorite: 1
    end
    if params[:request]
      @user_book = @book.user_books.build user_id: current_user.id, request: 1
    end
    if @user_book.save
      redirect_to @book
      # respond_to do |format|
      #   format.html{ redirect_to @book }
      #   format.js
      # end
    end
  end

  # PATCH/PUT /user_books/1
  # PATCH/PUT /user_books/1.json
  def update
    # respond_to do |format|
    #   if @user_book.update(user_book_params)
    #     format.html { redirect_to @user_book, notice: 'User book was successfully updated.' }
    #     format.json { render :show, status: :ok, location: @user_book }
    #   else
    #     format.html { render :edit }
    #     format.json { render json: @user_book.errors, status: :unprocessable_entity }
    #   end
    # end
    @book = Book.find params[:id]
    @user_book = @book.user_books.find_by_user_id current_user.id
    if params[:read]
      @user_book.update_attributes read: params[:read]
    end
    if params[:favorite]
      @user_book.update_attributes favorite: params[:favorite]
    end
    if params[:request]
      @user_book.update_attributes request: params[:request]
    end
    redirect_to @book
    # respond_to do |format|
    #   format.html{ redirect_to @book }
    #   format.js
    # end
  end
  

  # DELETE /user_books/1
  # DELETE /user_books/1.json
  def destroy
    @user_book.destroy
    respond_to do |format|
      format.html { redirect_to user_books_url, notice: 'User book was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_book
      @user_book = UserBook.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_book_params
      params.require(:user_book).permit(:book_id, :user_id, :read, :reading, :favorite, :request)
    end
end
