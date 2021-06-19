class City < ApplicationRecord
  belongs_to :pref
  has_many :city_topics, dependent: :destroy

  validates :city_name, presence: true, length: { maximum: 50 }
end
