class DepartmentType < ApplicationRecord
  has_many :departments, inverse_of: :department_type, dependent: :nullify

  rails_admin do
    configure :departments do
      inline_add false
    end
  end
end
