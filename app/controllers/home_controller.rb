class HomeController < ApplicationController
  respond_to :html, :json, :js
  def index
  end

  def create
    @response = Cloudinary::Uploader.upload(params[:video], :resource_type => :video)
    flash[:notice] = @response
    redirect_to root_path
  end

  def new
  end
end
