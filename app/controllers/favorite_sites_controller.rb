class FavoriteSitesController < ApplicationController
  # GET /favorite_sites
  # GET /favorite_sites.json
  def index
    @favorite_sites = FavoriteSite.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @favorite_sites }
    end
  end

  # GET /favorite_sites/1
  # GET /favorite_sites/1.json
  def show
    @favorite_site = FavoriteSite.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @favorite_site }
    end
  end

  # GET /favorite_sites/new
  # GET /favorite_sites/new.json
  def new
    @favorite_site = FavoriteSite.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @favorite_site }
    end
  end

  # GET /favorite_sites/1/edit
  def edit
    @favorite_site = FavoriteSite.find(params[:id])
  end

  # POST /favorite_sites
  # POST /favorite_sites.json
  def create
    @favorite_site = FavoriteSite.new(params[:favorite_site])

    respond_to do |format|
      if @favorite_site.save
        format.html { redirect_to @favorite_site, :notice => 'Favorite site was successfully created.' }
        format.json { render :json => @favorite_site, :status => :created, :location => @favorite_site }
      else
        format.html { render :action => "new" }
        format.json { render :json => @favorite_site.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /favorite_sites/1
  # PUT /favorite_sites/1.json
  def update
    @favorite_site = FavoriteSite.find(params[:id])

    respond_to do |format|
      if @favorite_site.update_attributes(params[:favorite_site])
        format.html { redirect_to @favorite_site, :notice => 'Favorite site was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @favorite_site.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /favorite_sites/1
  # DELETE /favorite_sites/1.json
  def destroy
    @favorite_site = FavoriteSite.find(params[:id])
    @favorite_site.destroy

    respond_to do |format|
      format.html { redirect_to favorite_sites_url }
      format.json { head :ok }
    end
  end
end
