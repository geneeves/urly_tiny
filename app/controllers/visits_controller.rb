class VisitsController < ApplicationController
  
  def index
    @url = Url.find(params[:id])
    redirect_to visits_path
  end

  def show
    @url = Url.find(params[:id])
    Visit.create(:url_id => params[:id])
    redirect_to @url.original_url
  end

  private 
  # def visit_params
  #   params.require(:visit).permit(:url_id)
  # end
end