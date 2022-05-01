class JobPosition < ApplicationRecord
  has_many :employees, inverse_of: :job_position
  accepts_nested_attributes_for :employees, allow_destroy: true

  rails_admin do
    show do
      include_all_fields
    end
    configure :employees do
      visible false
    end
  end
end
