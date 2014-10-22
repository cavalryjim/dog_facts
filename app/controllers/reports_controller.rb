class ReportsController < ApplicationController
  
  def create
    @report = Report.new(report_params)
    @success = @report.save
    
    
    respond_to do |format|
      if @report.save 
        @success = true
        format.html { redirect_to return_path, notice: 'Document was successfully uploaded.' }
        format.json { render action: 'show', status: :created, location: @document }
        format.js
      else
        @success = false
        format.html { render action: 'new' }
        format.json { render json: @document.errors, status: :unprocessable_entity }
        format.js
      end
    end
    #redirect_to root_path
  end
  
  
  private
    def document_params
      params.require(:report).permit(:requestor_email, :microchip_id)
    end
end
