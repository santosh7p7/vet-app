class ReceptionistsController < ApplicationController
  # GET /receptionists
  # GET /receptionists.json
  def index
    @receptionists = Receptionist.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @receptionists }
    end
  end

  # GET /receptionists/1
  # GET /receptionists/1.json
  def show
    @receptionist = Receptionist.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @receptionist }
    end
  end

  # GET /receptionists/new
  # GET /receptionists/new.json
  def new
    @receptionist = Receptionist.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @receptionist }
    end
  end

  # GET /receptionists/1/edit
  def edit
    @receptionist = Receptionist.find(params[:id])
  end

  # POST /receptionists
  # POST /receptionists.json
  def create
    @receptionist = Receptionist.new(params[:receptionist])

    respond_to do |format|
      if @receptionist.save
        format.html { redirect_to @receptionist, notice: 'Receptionist was successfully created.' }
        format.json { render json: @receptionist, status: :created, location: @receptionist }
      else
        format.html { render action: "new" }
        format.json { render json: @receptionist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /receptionists/1
  # PUT /receptionists/1.json
  def update
    @receptionist = Receptionist.find(params[:id])

    respond_to do |format|
      if @receptionist.update_attributes(params[:receptionist])
        format.html { redirect_to @receptionist, notice: 'Receptionist was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @receptionist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /receptionists/1
  # DELETE /receptionists/1.json
  def destroy
    @receptionist = Receptionist.find(params[:id])
    @receptionist.destroy

    respond_to do |format|
      format.html { redirect_to receptionists_url }
      format.json { head :no_content }
    end
  end
end
