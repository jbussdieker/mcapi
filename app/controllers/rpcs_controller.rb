class RpcsController < ApplicationController
  before_action :set_rpc, only: [:show, :edit, :update, :destroy]

  # GET /rpcs
  # GET /rpcs.json
  def index
    @rpcs = Rpc.all
  end

  # GET /rpcs/1
  # GET /rpcs/1.json
  def show
  end

  # GET /rpcs/new
  def new
    @rpc = Rpc.new
  end

  # GET /rpcs/1/edit
  def edit
  end

  # POST /rpcs
  # POST /rpcs.json
  def create
    @rpc = Rpc.new(rpc_params)

    respond_to do |format|
      if @rpc.save && @rpc.run
        format.html { redirect_to @rpc, notice: 'Rpc was successfully created.' }
        format.json { render :show, status: :created, location: @rpc }
      else
        format.html { render :new }
        format.json { render json: @rpc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rpcs/1
  # PATCH/PUT /rpcs/1.json
  def update
    respond_to do |format|
      if @rpc.update(rpc_params)
        format.html { redirect_to @rpc, notice: 'Rpc was successfully updated.' }
        format.json { render :show, status: :ok, location: @rpc }
      else
        format.html { render :edit }
        format.json { render json: @rpc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rpcs/1
  # DELETE /rpcs/1.json
  def destroy
    @rpc.destroy
    respond_to do |format|
      format.html { redirect_to rpcs_url, notice: 'Rpc was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rpc
      @rpc = Rpc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rpc_params
      params.require(:rpc).permit(:agent, :action, :timeout, :discovery_timeout)
    end
end
