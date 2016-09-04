class Administrator::PhotosController < ApplicationController
  before_action :authenticate_user!
  before_action :require_authorized



  def create
    @bow = Bow.find(params[:bow_id])
    @bow.photos.create(photo_params)
    redirect_to administrator_bow_path(@bow)
  end

  private

  def require_authorized
    if current_user.email != "administrator@admin.com"
      return render text: 'Unauthorized', status: :Unauthorized
    end
  end

  def photo_params
    params.require(:photo).permit(:picture, :caption, :bow_id)
  end

end
