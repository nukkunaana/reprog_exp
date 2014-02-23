class PlasmidProbesController < ApplicationController
  before_action :set_plasmid_probe, only: [:show, :edit, :update, :destroy]

  # GET /plasmid_probes
  # GET /plasmid_probes.json
  def index
    @plasmid_probes = PlasmidProbe.all
  end

  # GET /plasmid_probes/1
  # GET /plasmid_probes/1.json
  def show
  end

  # GET /plasmid_probes/new
  def new
    @plasmid_probe = PlasmidProbe.new
  end

  # GET /plasmid_probes/1/edit
  def edit
  end

  # POST /plasmid_probes
  # POST /plasmid_probes.json
  def create
    @plasmid_probe = PlasmidProbe.new(plasmid_probe_params)

    respond_to do |format|
      if @plasmid_probe.save
        format.html { redirect_to @plasmid_probe, notice: 'Plasmid probe was successfully created.' }
        format.json { render action: 'show', status: :created, location: @plasmid_probe }
      else
        format.html { render action: 'new' }
        format.json { render json: @plasmid_probe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plasmid_probes/1
  # PATCH/PUT /plasmid_probes/1.json
  def update
    respond_to do |format|
      if @plasmid_probe.update(plasmid_probe_params)
        format.html { redirect_to @plasmid_probe, notice: 'Plasmid probe was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @plasmid_probe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plasmid_probes/1
  # DELETE /plasmid_probes/1.json
  def destroy
    @plasmid_probe.destroy
    respond_to do |format|
      format.html { redirect_to plasmid_probes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plasmid_probe
      @plasmid_probe = PlasmidProbe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def plasmid_probe_params
      params.require(:plasmid_probe).permit(:plasmid_id, :probe_id)
    end
end
