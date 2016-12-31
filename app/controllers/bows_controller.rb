class BowsController < ApplicationController

  def index
    @bows = Bow.all
  end

  def show
    @bow = Bow.find(params[:id])
    @photo = Photo.new
  end


  def info
  end

  def contact
  end

 
  private

  def bow_params
    params.require(:bow).permit(:name, :description)
  end

end
