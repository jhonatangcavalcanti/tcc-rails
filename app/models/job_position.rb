class JobPosition < ApplicationRecord
  has_many :positions
  has_many :employees, through: :positions
end
