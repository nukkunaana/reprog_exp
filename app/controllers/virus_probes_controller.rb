class VirusProbesController < ApplicationController
  before_action :set_virus_probe, only: [:show, :edit, :update, :destroy]

  # GET /virus_probes
  # GET /virus_probes.json
  def index
    @virus_probes = VirusProbe.all
  end

  # GET /virus_probes/1
  # GET /virus_probes/1.json
  def show
  end

  # GET /virus_probes/new
  def new
    @virus_probe = VirusProbe.new
  end

  # GET /virus_probes/1/edit
  def edit
  end

  # POST /virus_probes
  # POST /virus_probes.json
  def create
    @virus_probe = VirusProbe.new(virus_probe_params)

    respond_to do |format|
      if @virus_probe.save
        format.html { redirect_to @virus_probe, notice: 'Virus probe was successfully created.' }
        format.json { render action: 'show', status: :created, location: @virus_probe }
      else
        format.html { render action: 'new' }
        format.json { render json: @virus_probe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /virus_probes/1
  # PATCH/PUT /virus_probes/1.json
  def update
    respond_to do |format|
      if @virus_probe.update(virus_probe_params)
        format.html { redirect_to @virus_probe, notice: 'Virus probe was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @virus_probe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /virus_probes/1
  # DELETE /virus_probes/1.json
  def destroy
    @virus_probe.destroy
    respond_to do |format|
      format.html { redirect_to virus_probes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_virus_probe
      @virus_probe = VirusProbe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def virus_probe_params
      params.require(:virus_probe).permit(:viri_id, :probe_id)
    end
end
