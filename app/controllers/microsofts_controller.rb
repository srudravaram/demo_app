class MicrosoftsController < ApplicationController
  # GET /microsofts
  # GET /microsofts.json
  def index
    @microsofts = Microsoft.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @microsofts }
    end
  end

  # GET /microsofts/1
  # GET /microsofts/1.json
  def show
    @microsoft = Microsoft.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @microsoft }
    end
  end

  # GET /microsofts/new
  # GET /microsofts/new.json
  def new
    @microsoft = Microsoft.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @microsoft }
    end
  end

  # GET /microsofts/1/edit
  def edit
    @microsoft = Microsoft.find(params[:id])
  end

  # POST /microsofts
  # POST /microsofts.json
  def create
    @microsoft = Microsoft.new(params[:microsoft])

    respond_to do |format|
      if @microsoft.save
        format.html { redirect_to @microsoft, notice: 'Microsoft was successfully created.' }
        format.json { render json: @microsoft, status: :created, location: @microsoft }
      else
        format.html { render action: "new" }
        format.json { render json: @microsoft.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /microsofts/1
  # PUT /microsofts/1.json
  def update
    @microsoft = Microsoft.find(params[:id])

    respond_to do |format|
      if @microsoft.update_attributes(params[:microsoft])
        format.html { redirect_to @microsoft, notice: 'Microsoft was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @microsoft.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /microsofts/1
  # DELETE /microsofts/1.json
  def destroy
    @microsoft = Microsoft.find(params[:id])
    @microsoft.destroy

    respond_to do |format|
      format.html { redirect_to microsofts_url }
      format.json { head :no_content }
    end
  end
end
