class FeaturesController < ApplicationController
  before_action :authenticate_admin!, except: [:index, :test]
  def index
  end

  def new
    @feature = Feature.new
    render :layout => 'admin'
  end

  def create
  end
end
