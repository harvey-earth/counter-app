class Visit < ApplicationRecord
  belongs_to :server, touch: true
  counter_culture :server

  validates :timestamp, presence: true
  validates :requestip, presence: true
end
