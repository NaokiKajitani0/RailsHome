class CostsController < ApplicationController
  before_action :set_cost, only: %i[ show edit update destroy ]

  # GET /costs or /costs.json
  def index
    @costs = Cost.all
  end

  # GET /costs/1 or /costs/1.json
  def show
    @cost_file = Roo::Excelx.new("./public/uploads/cost/costsfile/#{@cost.id}/#{@cost[:costsfile]}").sheet(0)
  end

  # GET /costs/new
  def new
    @cost = Cost.new
  end

  # GET /costs/1/edit
  def edit
  end

  # POST /costs or /costs.json
  def create
    @cost = Cost.new(cost_params)

    respond_to do |format|
      if @cost.save
        format.html { redirect_to costs_path, notice: "Cost was successfully created." }
        format.json { render :index, status: :created }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /costs/1 or /costs/1.json
  def update
    respond_to do |format|
      if @cost.update(cost_params)
        format.html { redirect_to cost_url(@cost), notice: "Cost was successfully updated." }
        format.json { render :show, status: :ok, location: @cost }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /costs/1 or /costs/1.json
  def destroy
    @cost.destroy

    respond_to do |format|
      format.html { redirect_to costs_url, notice: "Cost was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def test
    casename="dashbord"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cost
      @cost = Cost.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cost_params
      params.require(:cost).permit(:year, :month, :day, :costsfile)
    end
end
