class DevlogsController < ApplicationController

  set_tab :devlog
  
  # GET /devlogs
  # GET /devlogs.json
  def index
    @devlogs = Devlog.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @devlogs }
    end
  end

  # GET /devlogs/1
  # GET /devlogs/1.json
  def show
    @devlog = Devlog.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @devlog }
    end
  end

  # GET /devlogs/new
  # GET /devlogs/new.json
  def new
    @devlog = Devlog.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @devlog }
    end
  end

  # GET /devlogs/1/edit
  def edit
    @devlog = Devlog.find(params[:id])
  end

  # POST /devlogs
  # POST /devlogs.json
  def create
    @devlog = Devlog.new(params[:devlog])

    respond_to do |format|
      if @devlog.save
        format.html { redirect_to @devlog, notice: 'Devlog was successfully created.' }
        format.json { render json: @devlog, status: :created, location: @devlog }
      else
        format.html { render action: "new" }
        format.json { render json: @devlog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /devlogs/1
  # PUT /devlogs/1.json
  def update
    @devlog = Devlog.find(params[:id])

    respond_to do |format|
      if @devlog.update_attributes(params[:devlog])
        format.html { redirect_to @devlog, notice: 'Devlog was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @devlog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /devlogs/1
  # DELETE /devlogs/1.json
  def destroy
    @devlog = Devlog.find(params[:id])
    @devlog.destroy

    respond_to do |format|
      format.html { redirect_to devlogs_url }
      format.json { head :ok }
    end
  end
end
