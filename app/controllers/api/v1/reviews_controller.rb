class Api::V1::ReviewsController < ApplicationController

  before_action :set_album

  def index
    @reviews = @album.reviews 
    render json: @reviews
  end

  def create
    @review = @account.reviews.build(review_params)
    if @review.save
      render json: @review
    else
      render json:{error: "Error creating review"}, status: 400
    end
  end

  def show
    @review = @album.reviews.find_by(id: params[:id])
    render json: @review
  end

  def destroy

  end

  private

  def set_album
    # /api/v1/albums/:id/reviews
    @album = Album.find(params[:album_id])
  end
  
  def review_params
    params.require(:review).permit(:content, :username, :rating, :album_id)
  end
end
