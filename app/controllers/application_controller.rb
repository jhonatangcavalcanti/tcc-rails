class ApplicationController < ActionController::Base
  before_action :set_somethings

  def set_somethings
    @employees = Employee.all
    @rooms = Room.all
  end
end
