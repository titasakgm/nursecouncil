class CodePrenamesController < ApplicationController
  
  set_tab :code_prename
  
  # GET /code_prenames
  # GET /code_prenames.json
  def index
    @code_prenames = CodePrename.all.order(['code',1])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @code_prenames }
    end
  end

  # GET /code_prenames/1
  # GET /code_prenames/1.json
  def show
    @code_prename = CodePrename.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @code_prename }
    end
  end

  # GET /code_prenames/new
  # GET /code_prenames/new.json
  def new
    @code_prename = CodePrename.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @code_prename }
    end
  end

  # GET /code_prenames/1/edit
  def edit
    @code_prename = CodePrename.find(params[:id])
  end

  # POST /code_prenames
  # POST /code_prenames.json
  def create
    @code_prename = CodePrename.new(params[:code_prename])

    respond_to do |format|
      if @code_prename.save
        format.html { redirect_to @code_prename, notice: 'Code prename was successfully created.' }
        format.json { render json: @code_prename, status: :created, location: @code_prename }
      else
        format.html { render action: "new" }
        format.json { render json: @code_prename.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /code_prenames/1
  # PUT /code_prenames/1.json
  def update
    @code_prename = CodePrename.find(params[:id])

    respond_to do |format|
      if @code_prename.update_attributes(params[:code_prename])
        format.html { redirect_to @code_prename, notice: 'Code prename was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @code_prename.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /code_prenames/1
  # DELETE /code_prenames/1.json
  def destroy
    @code_prename = CodePrename.find(params[:id])
    @code_prename.destroy

    respond_to do |format|
      format.html { redirect_to code_prenames_url }
      format.json { head :ok }
    end
  end
end
