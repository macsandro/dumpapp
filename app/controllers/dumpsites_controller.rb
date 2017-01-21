class DumpsitesController < ApplicationController
  before_action :set_dumpsite, only: [:show, :edit, :update, :destroy]

  # GET /dumpsites
  # GET /dumpsites.json
  def index
    @dumpsites = Dumpsite.all
  end

  # GET /dumpsites/1
  # GET /dumpsites/1.json
  def show
  end

  # GET /dumpsites/new
  def new
    @dumpsite = Dumpsite.new
  end

  # GET /dumpsites/1/edit
  def edit
  end

  # POST /dumpsites
  # POST /dumpsites.json
  def create
    @dumpsite = Dumpsite.new(dumpsite_params)

    respond_to do |format|
      if @dumpsite.save
        format.html { redirect_to @dumpsite, notice: 'Dumpsite was successfully created.' }
        format.json { render :show, status: :created, location: @dumpsite }
      else
        format.html { render :new }
        format.json { render json: @dumpsite.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dumpsites/1
  # PATCH/PUT /dumpsites/1.json
  def update
    respond_to do |format|
      if @dumpsite.update(dumpsite_params)
        format.html { redirect_to @dumpsite, notice: 'Dumpsite was successfully updated.' }
        format.json { render :show, status: :ok, location: @dumpsite }
      else
        format.html { render :edit }
        format.json { render json: @dumpsite.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dumpsites/1
  # DELETE /dumpsites/1.json
  def destroy
    @dumpsite.destroy
    respond_to do |format|
      format.html { redirect_to dumpsites_url, notice: 'Dumpsite was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dumpsite
      @dumpsite = Dumpsite.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dumpsite_params
      params.require(:dumpsite).permit(:name, :address)
    end
end
