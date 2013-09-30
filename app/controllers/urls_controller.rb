class UrlsController < ApplicationController
  def index
    @url = Url.new
  end

  def create
   @url = Url.new(url_params)
    if @url.save
      redirect_to url_path(@url.id)
    else 
      flash[:notice] = "Please enter a real url."
      render urls
    end
  end

  def show
    @url = Url.find(params[:id])
  end

  private
  def url_params 
    params.require(:url).permit(:original_url)
  end
end