class ClientAccessoriesController < ApplicationController
  before_action :set_client_accessory, only: [:show, :edit, :update, :destroy]

  # GET /client_accessories
  # GET /client_accessories.json
  def index
    @client_accessories = ClientAccessory.all
  end

  # GET /client_accessories/1
  # GET /client_accessories/1.json
  def show
  end

  # GET /client_accessories/new
  def new
    @client_accessory = ClientAccessory.new
  end

  # GET /client_accessories/1/edit
  def edit
  end

  # POST /client_accessories
  # POST /client_accessories.json
  def create
    @client_accessory = ClientAccessory.new(client_accessory_params)

    respond_to do |format|
      if @client_accessory.save
        format.html { redirect_to @client_accessory, notice: 'Client accessory was successfully created.' }
        format.json { render :show, status: :created, location: @client_accessory }
      else
        format.html { render :new }
        format.json { render json: @client_accessory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /client_accessories/1
  # PATCH/PUT /client_accessories/1.json
  def update
    respond_to do |format|
      if @client_accessory.update(client_accessory_params)
        format.html { redirect_to @client_accessory, notice: 'Client accessory was successfully updated.' }
        format.json { render :show, status: :ok, location: @client_accessory }
      else
        format.html { render :edit }
        format.json { render json: @client_accessory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /client_accessories/1
  # DELETE /client_accessories/1.json
  def destroy
    @client_accessory.destroy
    respond_to do |format|
      format.html { redirect_to client_accessories_url, notice: 'Client accessory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_client_accessory
      @client_accessory = ClientAccessory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def client_accessory_params
      params.require(:client_accessory).permit(:client_record_id, :accessory_id, :notes)
    end
end
