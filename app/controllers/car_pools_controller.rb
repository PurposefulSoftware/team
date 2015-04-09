class CarPoolsController < ApplicationController
  before_action :set_car_pool, only: [:show, :edit, :update, :destroy]

  # GET /car_pools
  # GET /car_pools.json
  def index
    @car_pools = CarPool.all
  end

  # GET /car_pools/1
  # GET /car_pools/1.json
  def show
  end

  # GET /car_pools/new
  def new
    @car_pool = CarPool.new
  end

  # GET /car_pools/1/edit
  def edit
  end

  # POST /car_pools
  # POST /car_pools.json
  def create
    @car_pool = CarPool.new(car_pool_params)

    respond_to do |format|
      if @car_pool.save
        format.html { redirect_to @car_pool, notice: 'Car pool was successfully created.' }
        format.json { render :show, status: :created, location: @car_pool }
      else
        format.html { render :new }
        format.json { render json: @car_pool.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /car_pools/1
  # PATCH/PUT /car_pools/1.json
  def update
    respond_to do |format|
      if @car_pool.update(car_pool_params)
        format.html { redirect_to @car_pool, notice: 'Car pool was successfully updated.' }
        format.json { render :show, status: :ok, location: @car_pool }
      else
        format.html { render :edit }
        format.json { render json: @car_pool.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /car_pools/1
  # DELETE /car_pools/1.json
  def destroy
    @car_pool.destroy
    respond_to do |format|
      format.html { redirect_to car_pools_url, notice: 'Car pool was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_car_pool
      @car_pool = CarPool.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def car_pool_params
      params.require(:car_pool).permit(:title, :start_at, :end_at, :location_name, :location_address, :location_url, :details)
    end
end
