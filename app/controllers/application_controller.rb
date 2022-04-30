class ApplicationController < ActionController::Base
  def index
    @last_5_updated_employees = Employee.order(updated_at: :desc).limit(5)
  end

  def search_page
    if (params[:name])
      @name = params[:name]
      @employees = Employee.where("unaccent(lower(employees.name)) LIKE unaccent(lower(?))", "%#{@name}%")
    end
  end
end
