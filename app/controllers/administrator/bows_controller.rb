class Administrator::BowsController < ApplicationController
  before_action :authenticate_user!
  before_action :require_authorized, only: [:create, :edit, :destroy, :update]

  def index
    @bows = Bow.all
  end

  def show
    @bow = Bow.find(params[:id])
    @photo = Photo.new
  end

  def new
    @bow = Bow.new
    @photo = Photo.new
  end

  def create
    Bow.create(bow_params)
    redirect_to administrator_bows_path
  end

  def edit
    @bow = Bow.find(params[:id])
  end

  def update
    @bow = Bow.find(params[:id])
    @bow.update_attributes(bow_params)
    redirect_to administrator_bows_path
  end


  def destroy
    @bow = Bow.find(params[:id])
    @bow.delete
    redirect_to administrator_bows_path
  end

  private

  def require_authorized
    if current_user.email != "administrator@admin.com"
      return render text: 'Unauthorized', status: :Unauthorized
    end
  end

  def bow_params
    params.require(:bow).permit(:name, :description)
  end

end


