class CodeTambonsController < ApplicationController
  # GET /code_tambons
  # GET /code_tambons.json
  def index
    @code_tambons = CodeTambon.all.order(['_id',1]).page(params[:page])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @code_tambons }
    end
  end

  # GET /code_tambons/1
  # GET /code_tambons/1.json
  def show
    @code_tambon = CodeTambon.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @code_tambon }
    end
  end

  # GET /code_tambons/new
  # GET /code_tambons/new.json
  def new
    @code_tambon = CodeTambon.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @code_tambon }
    end
  end

  # GET /code_tambons/1/edit
  def edit
    @code_tambon = CodeTambon.find(params[:id])
  end

  # POST /code_tambons
  # POST /code_tambons.json
  def create
    @code_tambon = CodeTambon.new(params[:code_tambon])

    respond_to do |format|
      if @code_tambon.save
        format.html { redirect_to @code_tambon, notice: 'Code tambon was successfully created.' }
        format.json { render json: @code_tambon, status: :created, location: @code_tambon }
      else
        format.html { render action: "new" }
        format.json { render json: @code_tambon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /code_tambons/1
  # PUT /code_tambons/1.json
  def update
    @code_tambon = CodeTambon.find(params[:id])

    respond_to do |format|
      if @code_tambon.update_attributes(params[:code_tambon])
        format.html { redirect_to @code_tambon, notice: 'Code tambon was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @code_tambon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /code_tambons/1
  # DELETE /code_tambons/1.json
  def destroy
    @code_tambon = CodeTambon.find(params[:id])
    @code_tambon.destroy

    respond_to do |format|
      format.html { redirect_to code_tambons_url }
      format.json { head :ok }
    end
  end
  
  def search
    @code_tambons = CodeTambon.where("(this.province + this.amphoe + this.code + this.name + this.zip).indexOf('#{params[:q]}') != -1").page(params[:page])
    render 'index'
  end   
end
