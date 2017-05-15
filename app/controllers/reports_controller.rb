class ReportsController < ApplicationController
	before_action :logged_in_user, only: [:index, :show, :create, :update]
	
  def index
  	@reports = Report.paginate(:per_page =>10 ,page: params[:page]).order('date_captured DESC')  
  end

  def show
  end

  def create
  end

  def update
  end
end
