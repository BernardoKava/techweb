class ServiceRequestsController < ApplicationController
  before_action :set_service_request, only: [:show, :edit, :update, :destroy]

  # GET /service_requests
  # GET /service_requests.json
  def index

    @page_title = "SR | All"
    @service_requests = ServiceRequest.all #.paginate(page: params[:page], :per_page => 10).order("follow_up DESC")
    @sr_count = ServiceRequest.count
    render action: :index
  end

  def opensr
    @page_title = "SR | Open"
    @service_requests = ServiceRequest.where(resolved:false) #.paginate(page: params[:page], :per_page => 10).order("follow_up DESC")
    @sr_count = ServiceRequest.where(resolved:false).count
    render action: :index
  end

  def closedsr
    @page_title = "SR | Closed"
    @service_requests = ServiceRequest.where(resolved:true) #.paginate(page: params[:page], :per_page => 10).order("follow_up DESC")
    @sr_count = ServiceRequest.where(resolved:true).count
    render action: :index
  end

  # GET /service_requests/1
  # GET /service_requests/1.json
  def show
    @sr_volume = ServiceRequest.count
    @ticket_number = 65822+ (@sr_volume)
    @service_request.ticket_number= @ticket_number
    @service_request.save
  end

  # GET /service_requests/new
  def new
    @service_request = ServiceRequest.new
  end

  # GET /service_requests/1/edit
  def edit
  end

  # POST /service_requests
  # POST /service_requests.json
  def create
    @service_request = ServiceRequest.new(service_request_params)

    respond_to do |format|
      if @service_request.save
        format.html { redirect_to @service_request, notice: 'Service request was successfully created.' }
        format.json { render :show, status: :created, location: @service_request }
      else
        format.html { render :new }
        format.json { render json: @service_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /service_requests/1
  # PATCH/PUT /service_requests/1.json
  def update
    respond_to do |format|
      if @service_request.update(service_request_params)
        format.html { redirect_to @service_request, notice: 'Service request was successfully updated.' }
        format.json { render :show, status: :ok, location: @service_request }
      else
        format.html { render :edit }
        format.json { render json: @service_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /service_requests/1
  # DELETE /service_requests/1.json
  def destroy
    @service_request.destroy
    respond_to do |format|
      format.html { redirect_to service_requests_url, notice: 'Service request was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service_request
      @service_request = ServiceRequest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def service_request_params
      params.require(:service_request).permit(:ticket_number, :request_type_id, :tech_service_id, :problem_description, :request_status_id, :case_notes, :case_resolution, :resolved, :user_id)
    end
end
