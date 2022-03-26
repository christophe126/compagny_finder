class CompaniesController < ApplicationController
  def index
    @call = CallApiCompany.new(47)
    @result = @call.search
  end
end
