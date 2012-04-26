class CodeAmphoesController < ApplicationController
  # GET /code_amphoes
  # GET /code_amphoes.json
  def index
    @code_amphoes = CodeAmphoe.all.order(['_id',1]).page(params[:page])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @code_amphoes }
    end
  end

  # GET /code_amphoes/1
  # GET /code_amphoes/1.json
  def show
    @code_amphoe = CodeAmphoe.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @code_amphoe }
    end
  end

  # GET /code_amphoes/new
  # GET /code_amphoes/new.json
  def new
    @code_amphoe = CodeAmphoe.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @code_amphoe }
    end
  end

  # GET /code_amphoes/1/edit
  def edit
    @code_amphoe = CodeAmphoe.find(params[:id])
  end

  # POST /code_amphoes
  # POST /code_amphoes.json
  def create
    @code_amphoe = CodeAmphoe.new(params[:code_amphoe])

    respond_to do |format|
      if @code_amphoe.save
        format.html { redirect_to @code_amphoe, notice: 'Code amphoe was successfully created.' }
        format.json { render json: @code_amphoe, status: :created, location: @code_ampho }
      else
        format.html { render action: "new" }
        format.json { render json: @code_amphoe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /code_amphoes/1
  # PUT /code_amphoes/1.json
  def update
    @code_amphoe = CodeAmphoe.find(params[:id])

    respond_to do |format|
      if @code_amphoe.update_attributes(params[:code_amphoe])
        format.html { redirect_to @code_amphoe, notice: 'Code amphoe was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @code_amphoe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /code_amphoes/1
  # DELETE /code_amphoes/1.json
  def destroy
    @code_amphoe = CodeAmphoe.find(params[:id])
    @code_amphoe.destroy

    respond_to do |format|
      format.html { redirect_to code_amphoes_url }
      format.json { head :ok }
    end
  end
  
  def search
    @code_amphoes = CodeAmphoe.where("(this.province + this.code + this.name).indexOf('#{params[:q]}') != -1").page(params[:page])
    render 'index'
  end  
end
