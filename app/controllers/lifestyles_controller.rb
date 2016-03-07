class LifestylesController < ApplicationController
  before_action :authenticate_admin!, except: [:index,:show]
  layout "admin", only: [:new, :create, :update, :admin_index, :lifestyle_admin_index]   
  def index
    @lifestyle = Lifestyle.all
  end

  def new
    @lifestyle = Lifestyle.new
  end

  def create
    @lifestyle = Lifestyle.new(lifestyle_params)
    if @lifestyle.save
      flash[:notice] = "Successfully created article."
      redirect_to "/lifestyle_admin_index"
    else
      render :action => 'new'
    end
  end

  def update
  end

  
  private

  def lifestyle_params
    params.require(:lifestyle).permit(:link,:image,:intro,:title)
  end

end
