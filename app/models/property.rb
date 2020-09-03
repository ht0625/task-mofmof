class Property < ApplicationRecord
  with_options presence: true do
    validates :name
    validates :address
  end
  validates :rent, presence: true, numericality:  { greater_than_or_equal_to: 0 }
  validates :age, presence: true, numericality:  { greater_than_or_equal_to: 0 }
  has_many :nearest_stations, dependent: :destroy
  accepts_nested_attributes_for :nearest_stations, allow_destroy: true, reject_if: :all_blank
end
