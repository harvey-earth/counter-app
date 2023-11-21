class Visit < ApplicationRecord
  belongs_to :server, touch: true
  counter_culture :server
end
