class UrlsController < ApplicationController
  def index
    @url = Url.new
    if current_user
      @urls = Url.where(:user_id => current_user.id)
    end
  end

  def create
    @url = Url.new(url_params)
    @url.user_id = current_user.id
    if @url.save
      redirect_to root_path
    else 
      redirect_to root_path
      flash[:notice] = "Please enter an entire URL."
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