class ReportsApiController < ApplicationController

skip_before_filter :verify_authenticity_token
def show

end

def index
	 
    @data = [Report.select("date(date_captured)").distinct,Report.select("date(date_captured)").count]
    render json: @data
end
def new
	@report = Report.new
end
def create
	@report = Report.new(report_params)

	if @report.save
		@status = Hash.new("status")
      	@status["status"] = "created"
        render json: @status
      else
        render json: @article.errors
	end
end

private
    # Never trust parameters from the scary internet, only allow the white list through.
    def report_params
      params.require(:report).permit(:device_id, :description, :date_captured, :report_image)
    end
end
