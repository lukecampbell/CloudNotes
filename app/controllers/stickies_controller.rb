class StickiesController < ApplicationController
  # GET /stickies
  # GET /stickies.json
  def index
    @stickies = Sticky.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @stickies }
    end
  end

  # GET /stickies/1
  # GET /stickies/1.json
  def show
   redirect_to :action=>:index
  end

  # GET /stickies/new
  # GET /stickies/new.json
  def new
    @sticky = Sticky.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sticky }
    end
  end

  # GET /stickies/1/edit
  def edit
    @sticky = Sticky.find(params[:id])
  end

  # POST /stickies
  # POST /stickies.json
  def create
    @sticky = Sticky.new(params[:sticky])

    respond_to do |format|
      if @sticky.save
        format.html { redirect_to @sticky, notice: 'Sticky was successfully created.' }
        format.json { render json: @sticky, status: :created, location: @sticky }
      else
        format.html { render action: "new" }
        format.json { render json: @sticky.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /stickies/1
  # PUT /stickies/1.json
  def update
    @sticky = Sticky.find(params[:id])

    respond_to do |format|
      if @sticky.update_attributes(params[:sticky])
        format.html { redirect_to @sticky, notice: 'Sticky was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @sticky.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stickies/1
  # DELETE /stickies/1.json
  def destroy
    @sticky = Sticky.find(params[:id])
    @sticky.destroy

    respond_to do |format|
      format.html { redirect_to stickies_url }
      format.json { head :ok }
    end
  end
end
