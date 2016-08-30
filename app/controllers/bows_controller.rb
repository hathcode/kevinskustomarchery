class BowsController < ApplicationController

  def index
    @bows = Bow.all
  end

  def show
    @bow = Bow.find(params[:id])
  end

 
  private

  def bow_params
    params.require(:bow).permit(:name, :description)
  end

end
