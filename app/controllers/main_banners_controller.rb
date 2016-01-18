class MainBannersController < ApplicationController
  layout "admin", only: [:new, :create, :update]

  def index
    @banners = MainBanner.all 
  end
  
  def new
    @banner = MainBanner.new 
  end

  def edit
    @banner = MainBanner.find(params[:id])
  end
  
  def create
    @banner = MainBanner.new(main_banner_params)
    if @banner.save
      flash[:notice] = "Successfully created gallery."
      redirect_to "/banners_index"
    else
      render :action => 'new'
    end
  end

  def destroy
    @banner = MainBanner.find(params[:id])
    @banner.destroy
    flash[:notice] = "Successfully destroyed painting."
    redirect_to "/banners_index"
  end


  private

  def main_banner_params
    params.require(:main_banner).permit(:name,:title,:image)
  end

end
