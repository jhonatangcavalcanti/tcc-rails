class Building < ApplicationRecord
  has_many :rooms, dependent: :destroy

  validates :name, presence: true

  rails_admin do
    show do
      include_all_fields
    end
    configure :rooms do
      visible false
    end
  end
end
