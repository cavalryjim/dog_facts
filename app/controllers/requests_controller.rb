class RequestsController < ApplicationController
  before_action :set_request, only: [:show, :edit, :update, :destroy]
  respond_to :html, :js, :json

  def index
    @requests = Request.all
    respond_with(@requests)
  end

  def show
    respond_with(@request)
  end
  
  def new
    @request = Request.new
    @no_chip = params[:no_chip].present?
  end

  def edit
    @not_found = params[:not_found].present?
    
  end

  def create
    @request = Request.new(request_params)
    @request.save
    
    if @request.get_report 
      redirect_to root_path, notice: 'Request was successfully submitted.'
    else
      redirect_to edit_request_path(@request, not_found: true), notice: 'Animal not found'
    end
    
    #respond_with(@request)
  end

  def update
    respond_to do |format|
      if @request.update(request_params)
        format.js
        format.html { redirect_to root_path, notice: 'Request was successfully submitted.' }
        format.json { head :no_content }
      else
        format.js
        format.html { render action: 'edit' }
        format.json { render json: @household.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @request.destroy
    #respond_with(@request)
  end

  private
    def set_request
      @request = Request.find(params[:id])
    end

    def request_params
      params.require(:request).permit(:requestor_email, :microchip_id, :requestor_name, :requestor_phone, :animal_name, 
         :animal_breed, :requestee_name, :requestee_type, :requestee_email, :requestee_phone, :requestee_website)
    end
end
