class Allocation < ApplicationRecord
  belongs_to :employee
  belongs_to :room
  belongs_to :allocation_role
end
