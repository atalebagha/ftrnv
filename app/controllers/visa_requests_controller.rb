class VisaRequestsController < ApplicationController
  before_action :set_visa_request, only: [:show, :edit, :update, :destroy]

  # GET /visa_requests
  # GET /visa_requests.json
  def index
    @visa_requests = VisaRequest.all
  end

  # GET /visa_requests/1
  # GET /visa_requests/1.json
  def show
  end

  # GET /visa_requests/new
  def new
    @visa_request = VisaRequest.new
  end

  # GET /visa_requests/1/edit
  def edit
  end

  # POST /visa_requests
  # POST /visa_requests.json
  def create
    @visa_request = VisaRequest.new(visa_request_params)

    respond_to do |format|
      if @visa_request.save
        format.html { redirect_to @visa_request, notice: 'Visa request was successfully created.' }
        format.json { render :show, status: :created, location: @visa_request }
      else
        format.html { render :new }
        format.json { render json: @visa_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /visa_requests/1
  # PATCH/PUT /visa_requests/1.json
  def update
    respond_to do |format|
      if @visa_request.update(visa_request_params)
        format.html { redirect_to @visa_request, notice: 'Visa request was successfully updated.' }
        format.json { render :show, status: :ok, location: @visa_request }
      else
        format.html { render :edit }
        format.json { render json: @visa_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /visa_requests/1
  # DELETE /visa_requests/1.json
  def destroy
    @visa_request.destroy
    respond_to do |format|
      format.html { redirect_to visa_requests_url, notice: 'Visa request was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_visa_request
      @visa_request = VisaRequest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def visa_request_params
      params.require(:visa_request).permit(:code, :date, :purpose, :project_id, :user_id, :description)
    end
end
