class JobPosition < ApplicationRecord
  has_and_belongs_to_many :employee
end
