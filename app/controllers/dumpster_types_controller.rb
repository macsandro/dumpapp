class DumpsterTypesController < ApplicationController
  before_action :set_dumpster_type, only: [:show, :edit, :update, :destroy]

  # GET /dumpster_types
  # GET /dumpster_types.json
  def index
    @dumpster_types = DumpsterType.all
  end

  # GET /dumpster_types/1
  # GET /dumpster_types/1.json
  def show
  end

  # GET /dumpster_types/new
  def new
    @dumpster_type = DumpsterType.new
  end

  # GET /dumpster_types/1/edit
  def edit
  end

  # POST /dumpster_types
  # POST /dumpster_types.json
  def create
    @dumpster_type = DumpsterType.new(dumpster_type_params)

    respond_to do |format|
      if @dumpster_type.save
        format.html { redirect_to @dumpster_type, notice: 'Dumpster type was successfully created.' }
        format.json { render :show, status: :created, location: @dumpster_type }
      else
        format.html { render :new }
        format.json { render json: @dumpster_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dumpster_types/1
  # PATCH/PUT /dumpster_types/1.json
  def update
    respond_to do |format|
      if @dumpster_type.update(dumpster_type_params)
        format.html { redirect_to @dumpster_type, notice: 'Dumpster type was successfully updated.' }
        format.json { render :show, status: :ok, location: @dumpster_type }
      else
        format.html { render :edit }
        format.json { render json: @dumpster_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dumpster_types/1
  # DELETE /dumpster_types/1.json
  def destroy
    @dumpster_type.destroy
    respond_to do |format|
      format.html { redirect_to dumpster_types_url, notice: 'Dumpster type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dumpster_type
      @dumpster_type = DumpsterType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dumpster_type_params
      params.require(:dumpster_type).permit(:name)
    end
end
