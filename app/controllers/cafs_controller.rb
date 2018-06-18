class CafsController < ApplicationController
  before_action :set_caf, only: [:show, :edit, :update, :destroy]

  # GET /cafs
  # GET /cafs.json
  def index
    @cafs = Caf.all
  end

  # GET /cafs/1
  # GET /cafs/1.json
  def show
  end

  # GET /cafs/new
  def new
    @caf = Caf.new
  end

  # GET /cafs/1/edit
  def edit
  end

  # POST /cafs
  # POST /cafs.json
  def create
    @caf = Caf.new(caf_params)

    respond_to do |format|
      if @caf.save
        format.html { redirect_to @caf, notice: 'Caf was successfully created.' }
        format.json { render :show, status: :created, location: @caf }
      else
        format.html { render :new }
        format.json { render json: @caf.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cafs/1
  # PATCH/PUT /cafs/1.json
  def update
    respond_to do |format|
      if @caf.update(caf_params)
        format.html { redirect_to @caf, notice: 'Caf was successfully updated.' }
        format.json { render :show, status: :ok, location: @caf }
      else
        format.html { render :edit }
        format.json { render json: @caf.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cafs/1
  # DELETE /cafs/1.json
  def destroy
    @caf.destroy
    respond_to do |format|
      format.html { redirect_to cafs_url, notice: 'Caf was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_caf
      @caf = Caf.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def caf_params
      params.require(:caf).permit(:usuario, :senha)
    end
end
