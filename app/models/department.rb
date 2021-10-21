class Department < ApplicationRecord
  has_many :rooms
  belongs_to :department_type, inverse_of: :departments
end
