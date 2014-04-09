class VehicleMakesController < ApplicationController

  #->Prelang (scaffolding:rails/scope_to_user)
  before_filter :require_user_signed_in, only: [:new, :edit, :create, :update, :destroy]

  before_action :set_vehicle_make, only: [:show, :edit, :update, :destroy]

  # GET /vehicle_makes
  # GET /vehicle_makes.json
  def index
    @vehicle_makes = VehicleMake.all
  end

  # GET /vehicle_makes/1
  # GET /vehicle_makes/1.json
  def show
  end

  # GET /vehicle_makes/new
  def new
    @vehicle_make = VehicleMake.new
  end

  # GET /vehicle_makes/1/edit
  def edit
  end

  # POST /vehicle_makes
  # POST /vehicle_makes.json
  def create
    @vehicle_make = VehicleMake.new(vehicle_make_params)

    respond_to do |format|
      if @vehicle_make.save
        format.html { redirect_to @vehicle_make, notice: 'Vehicle make was successfully created.' }
        format.json { render action: 'show', status: :created, location: @vehicle_make }
      else
        format.html { render action: 'new' }
        format.json { render json: @vehicle_make.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vehicle_makes/1
  # PATCH/PUT /vehicle_makes/1.json
  def update
    respond_to do |format|
      if @vehicle_make.update(vehicle_make_params)
        format.html { redirect_to @vehicle_make, notice: 'Vehicle make was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @vehicle_make.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vehicle_makes/1
  # DELETE /vehicle_makes/1.json
  def destroy
    @vehicle_make.destroy
    respond_to do |format|
      format.html { redirect_to vehicle_makes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vehicle_make
      @vehicle_make = VehicleMake.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vehicle_make_params
      params[:vehicle_make]
    end
end
