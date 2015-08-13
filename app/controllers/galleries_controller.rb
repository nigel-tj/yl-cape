class GalleriesController < ApplicationController
  def index
    @galleries = Gallery.all
    
    respond_to do |format|
      format.html # index.html.erb
      # format.json { render json: @gallerys }
      format.json { render json: @gallerys.map{|document| document.to_jq_upload } }
    end
  end
  
  # GET /documents/1
  # GET /documents/1.json
  def show
    @gallery = Gallery.find(gallery_params[:id])
    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @gallery }
    end
  end
  
  # GET /documents/new
  # GET /documents/new.json
  def new
    @gallery = Gallery.new
    
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @gallery }
    end
  end
  
  # GET /documents/1/edit
  def edit
    @gallery = Gallery.find(gallery_params[:id])
  end

  # POST /documents
  # POST /documents.json
  def create
    @gallery = Gallery.new(gallery_params.permit(:file))
    
    # respond_to do |format|
    #   if @gallery.save
    #     format.html { redirect_to @gallery, notice: 'Gallery was successfully created.' }
    #     format.json { render json: @gallery, status: :created, location: @gallery }
    #   else
    #     format.html { render action: "new" }
    #     format.json { render json: @gallery.errors, status: :unprocessable_entity }
    #   end
    # end
    
    respond_to do |format|
      if @gallery.save
        format.html {
          render :json => [@gallery.to_jq_upload].to_json,
          :content_type => 'text/html',
          :layout => false
        }
        format.json { render json: {files: [@gallery.to_jq_upload]}, status: :created, location: @gallery }
      else
        format.html { render action: "new" }
        format.json { render json: @gallery.errors, status: :unprocessable_entity }
      end
    end    
  end
  
  # PUT /documents/1
  # PUT /documents/1.json
  def update
    @gallery = Gallery.find(gallery_params[:id])
    
    respond_to do |format|
      if @gallery.update_attributes(gallery_params[:gallery])
        format.html { redirect_to @gallery, notice: 'Gallery was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @gallery.errors, status: :unprocessable_entity }
      end
    end
  end
  
  # DELETE /documents/1
  # DELETE /documents/1.json
  def destroy
    @gallery = Gallery.find(gallery_params[:id])
    @gallery.destroy
    
    respond_to do |format|
      format.html { redirect_to documents_url }
      format.json { head :no_content }
    end
  end
  private
  def gallery_params
    params.permit(:file, :id)
  end

end
