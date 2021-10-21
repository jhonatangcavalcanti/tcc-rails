class DepartmentType < ApplicationRecord
  has_many :departments, inverse_of: :department_type
end
