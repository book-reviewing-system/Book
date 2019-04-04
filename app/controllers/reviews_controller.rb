class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :edit, :update, :destroy]

  # GET /reviews
  # GET /reviews.json
  def index
    @reviews = Review.all
    @user =User.all
  end

  # GET /reviews/1
  # GET /reviews/1.json
  def show
  end

  # GET /reviews/new
  def new
    @review = Review.new
  end

  # GET /reviews/1/edit
  def edit
   @book = Book.find(params[:book_id])
  end

  # POST /reviews
  # POST /reviews.json
  def create
    @book = Book.find params[:book_id]
    @review = @book.reviews.build review_params
    @review.user_id = current_user.id
    if @review.save
      flash[:success] = "Created"
      redirect_to @book
    else
      render 'new'
    end
  end

  # PATCH/PUT /reviews/1
  # PATCH/PUT /reviews/1.json
  def update
    # respond_to do |format|
    #   if @review.update(review_params)
    #     format.html { redirect_to @review, notice: 'Review was successfully updated.' }
    #     format.json { render :show, status: :ok, location: @review }
    #   else
    #     format.html { render :edit }
    #     format.json { render json: @review.errors, status: :unprocessable_entity }
    #   end
    # end

    if @review.update_attributes review_params
      flash[:success] = "Updated"
      redirect_to book_path(@review.book)
    else
      render 'edit'
    end
  end

  # DELETE /reviews/1
  # DELETE /reviews/1.json
  def destroy
   @review.destroy
    respond_to do |format|
      format.html { redirect_to book_path(@review.book), notice: 'Review was successfully destroyed.' }
      format.json { head :no_content }
   #  end
   # review.destroy
   #  flash[:success] = "Deleted"
   #  redirect_to root_path
  end
end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_review
      @review = Review.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def review_params
      params.require(:review).permit(:rating, :comment)
    end
end
