class NcModulesController < ApplicationController

  set_tab :nc_module

  # GET /nc_modules
  # GET /nc_modules.json
  def index
    @nc_modules = NcModule.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @nc_modules }
    end
  end

  # GET /nc_modules/1
  # GET /nc_modules/1.json
  def show
    @nc_module = NcModule.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @nc_module }
    end
  end

  # GET /nc_modules/new
  # GET /nc_modules/new.json
  def new
    @nc_module = NcModule.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @nc_module }
    end
  end

  # GET /nc_modules/1/edit
  def edit
    @nc_module = NcModule.find(params[:id])
  end

  # POST /nc_modules
  # POST /nc_modules.json
  def create
    @nc_module = NcModule.new(params[:nc_module])

    respond_to do |format|
      if @nc_module.save
        format.html { redirect_to @nc_module, notice: 'Nc module was successfully created.' }
        format.json { render json: @nc_module, status: :created, location: @nc_module }
      else
        format.html { render action: "new" }
        format.json { render json: @nc_module.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /nc_modules/1
  # PUT /nc_modules/1.json
  def update
    @nc_module = NcModule.find(params[:id])

    respond_to do |format|
      if @nc_module.update_attributes(params[:nc_module])
        format.html { redirect_to @nc_module, notice: 'Nc module was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @nc_module.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nc_modules/1
  # DELETE /nc_modules/1.json
  def destroy
    @nc_module = NcModule.find(params[:id])
    @nc_module.destroy

    respond_to do |format|
      format.html { redirect_to nc_modules_url }
      format.json { head :ok }
    end
  end
end
