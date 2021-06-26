class GovTopic < ApplicationRecord
  validates :gov_name, presence: true, length: { maximum: 50 }
  validates :title, presence: true, length: { maximum: 50 }
  validates :period, presence: true, length: { maximum: 70 }
  validates :content, presence: true, length: { maximum: 300 }
  validates :target, presence: true, length: { maximum: 50 }
  validates :counter, presence: true, length: { maximum: 50 }
  validates :link, presence: true, length: { maximum: 500 }
end
