class Administrator::BowsController < ApplicationController
  before_action :authenticate_user!

  def index
    @bows = Bow.all
  end

  def show
    @bow = Bow.find(params[:id])
  end

  def new
    @bow = Bow.new
    @photo = Photo.new
  end

  def create
    Bow.create(bow_params)
    redirect_to bows_path
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def bow_params
    params.require(:bow).permit(:name, :description)
  end

end




end
