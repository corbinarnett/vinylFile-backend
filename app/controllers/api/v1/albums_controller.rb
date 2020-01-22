class Api::V1::AlbumsController < ApplicationController
  
  def index
    @albums = Album.all
    render json: @albums
  end

  def create
    @album = Album.new(album_params)
    if @album.save
      render json: @album
    else
      render json: {error: 'Error creating album'}
    end
  end

  def show
    # /api/v1/albums/:id
    @album = Album.find(params[:id])
    render json: @album
  end

  def destroy
    @album = Album.find(params[:id])
    @album.destroy
    render json: @album
  end

  private
  
  def album_params
    params.require(:album).permit(:name, :artist, :label, :release_date, :image_url)
  end
end
