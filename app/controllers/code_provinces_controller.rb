class CodeProvincesController < ApplicationController
  
  set_tab :code_province
  
  # GET /code_provinces
  # GET /code_provinces.json
  def index
    @code_provinces = CodeProvince.page(params[:page])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @code_provinces }
    end
  end

  # GET /code_provinces/1
  # GET /code_provinces/1.json
  def show
    @code_province = CodeProvince.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @code_province }
    end
  end

  # GET /code_provinces/new
  # GET /code_provinces/new.json
  def new
    @code_province = CodeProvince.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @code_province }
    end
  end

  # GET /code_provinces/1/edit
  def edit
    @code_province = CodeProvince.find(params[:id])
  end

  # POST /code_provinces
  # POST /code_provinces.json
  def create
    @code_province = CodeProvince.new(params[:code_province])

    respond_to do |format|
      if @code_province.save
        format.html { redirect_to @code_province, notice: 'Code province was successfully created.' }
        format.json { render json: @code_province, status: :created, location: @code_province }
      else
        format.html { render action: "new" }
        format.json { render json: @code_province.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /code_provinces/1
  # PUT /code_provinces/1.json
  def update
    @code_province = CodeProvince.find(params[:id])

    respond_to do |format|
      if @code_province.update_attributes(params[:code_province])
        format.html { redirect_to @code_province, notice: 'Code province was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @code_province.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /code_provinces/1
  # DELETE /code_provinces/1.json
  def destroy
    @code_province = CodeProvince.find(params[:id])
    @code_province.destroy

    respond_to do |format|
      format.html { redirect_to code_provinces_url }
      format.json { head :ok }
    end
  end
end
