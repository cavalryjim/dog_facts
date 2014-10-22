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


  def edit
  end

  def create
    @request = Request.new(request_params)
    @success = @request.save
    
    #respond_with(@request)
  end

  def update
    @request.update(request_params)
    #respond_with(@request)
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
      params.require(:request).permit(:requestor_email, :microchip_id)
    end
end