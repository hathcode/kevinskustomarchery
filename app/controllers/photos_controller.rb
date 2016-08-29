class PhotosController < ApplicationController

  def create
    @bow = Bow.find(params[:bow_id])
    @bow.photos.create(photo_params)
    redirect_to bow_path(@bow)
  end

  private

  def photo_params
    params.require(:photo).permit(:picture, :caption)
  end

end
