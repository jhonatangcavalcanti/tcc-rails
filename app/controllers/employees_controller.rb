class EmployeesController < ApplicationController
  def index
    @employees = Employee.all
  end

  def show
    @employee = Employee.includes(allocations: [:ramals, :places]).find(params[:id])
  end
end
