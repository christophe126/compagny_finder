class CompaniesController < ApplicationController
  def index
    # if params[:departement].present? && params[:per_page].present?
    #   dep = params[:departement].to_i
    #   per_page = params[:per_page].to_i
    @call = CallApiCompany.new(47, 100)
    @resultats = @call.search
    #   @users = @result["total_pages"]
    # end
  end
end
