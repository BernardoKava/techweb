class ServerAccessoriesController < ApplicationController
  before_action :set_server_accessory, only: [:show, :edit, :update, :destroy]

  # GET /server_accessories
  # GET /server_accessories.json
  def index
    @server_accessories = ServerAccessory.all
  end

  # GET /server_accessories/1
  # GET /server_accessories/1.json
  def show
  end

  # GET /server_accessories/new
  def new
    @server_accessory = ServerAccessory.new
  end

  # GET /server_accessories/1/edit
  def edit
  end

  # POST /server_accessories
  # POST /server_accessories.json
  def create
    @server_accessory = ServerAccessory.new(server_accessory_params)

    respond_to do |format|
      if @server_accessory.save
        format.html { redirect_to @server_accessory, notice: 'Server accessory was successfully created.' }
        format.json { render :show, status: :created, location: @server_accessory }
      else
        format.html { render :new }
        format.json { render json: @server_accessory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /server_accessories/1
  # PATCH/PUT /server_accessories/1.json
  def update
    respond_to do |format|
      if @server_accessory.update(server_accessory_params)
        format.html { redirect_to @server_accessory, notice: 'Server accessory was successfully updated.' }
        format.json { render :show, status: :ok, location: @server_accessory }
      else
        format.html { render :edit }
        format.json { render json: @server_accessory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /server_accessories/1
  # DELETE /server_accessories/1.json
  def destroy
    @server_accessory.destroy
    respond_to do |format|
      format.html { redirect_to server_accessories_url, notice: 'Server accessory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_server_accessory
      @server_accessory = ServerAccessory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def server_accessory_params
      params.require(:server_accessory).permit(:accessory_id, :notes)
    end
end
