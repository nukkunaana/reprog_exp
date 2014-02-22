class ViriController < ApplicationController
  before_action :set_virus, only: [:show, :edit, :update, :destroy]

  # GET /viri
  # GET /viri.json
  def index
    @viri = Virus.all
  end

  # GET /viri/1
  # GET /viri/1.json
  def show
  end

  # GET /viri/new
  def new
    @virus = Virus.new
  end

  # GET /viri/1/edit
  def edit
  end

  # POST /viri
  # POST /viri.json
  def create
    @virus = Virus.new(virus_params)

    respond_to do |format|
      if @virus.save
        format.html { redirect_to @virus, notice: 'Virus was successfully created.' }
        format.json { render action: 'show', status: :created, location: @virus }
      else
        format.html { render action: 'new' }
        format.json { render json: @virus.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /viri/1
  # PATCH/PUT /viri/1.json
  def update
    respond_to do |format|
      if @virus.update(virus_params)
        format.html { redirect_to @virus, notice: 'Virus was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @virus.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /viri/1
  # DELETE /viri/1.json
  def destroy
    @virus.destroy
    respond_to do |format|
      format.html { redirect_to viri_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_virus
      @virus = Virus.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def virus_params
      params.require(:virus).permit(:name, :volume, :date)
    end
end
