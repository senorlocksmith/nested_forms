class ScriptLocationsController < ApplicationController
  before_action :get_project
  before_action :set_script_location, only: [:show, :edit, :update, :destroy]

  # GET /script_locations
  # GET /script_locations.json
  def index
    if params[:project_id]
      @script_location = ScriptLocation.where(project_id: params[:project_id])
    else
    @script_locations = ScriptLocation.all
    end
  end

  # GET /script_locations/1
  # GET /script_locations/1.json
  def show
  end

  # GET /script_locations/new
  def new
    @script_location = @project.script_locations.build
  end

  # GET /script_locations/1/edit
  def edit
  end

  # POST /script_locations
  # POST /script_locations.json
  def create
    @script_location = @project.script_locations.build(script_location_params)

    respond_to do |format|
      if @script_location.save
        format.html { redirect_to project_script_locations_path(@project), notice: 'Script location was successfully created.' }
        format.json { render :show, status: :created, location: @script_location }
      else
        format.html { render :new }
        format.json { render json: @script_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /script_locations/1
  # PATCH/PUT /script_locations/1.json
  def update
    respond_to do |format|
      if @script_location.update(script_location_params)
        format.html { redirect_to project_script_locations_path(@project), notice: 'Script location was successfully updated.' }
        format.json { render :show, status: :ok, location: @script_location }
      else
        format.html { render :edit }
        format.json { render json: @script_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /script_locations/1
  # DELETE /script_locations/1.json
  def destroy
    @script_location.destroy
    respond_to do |format|
      format.html { redirect_to project_script_locations_path(@project), notice: 'Script location was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def get_project
      @project = Project.find(params[:project_id])
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_script_location
      @script_location = ScriptLocation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def script_location_params
      params.require(:script_location).permit(:name, :description, :setting, :project_id, location_ids: [])
    end
end
