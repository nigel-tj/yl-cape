class FeaturesController < ApplicationController
  before_action :authenticate_admin!, except: [:index, :test]
  layout "admin", only: [:new, :create, :update, :admin_index]   
  
  def index
    @features = Feature.all
  end
  
  def admin_index
    @features = Feature.all
  end
  
  def new
    @feature = Feature.new
  end
  
  def create
    @feature = Feature.new(feature_params)
    if @feature.save
      flash[:notice] = "Successfully created gallery."
      redirect_to "/admin_index"
    else
      render :action => 'new'
    end
  end
  
  private
  def feature_params
    params.require(:feature).permit(:link,:image,:intro,:heading)
  end

end
