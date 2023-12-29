# Server class of servers running code
class Server < ApplicationRecord
  has_many :visits, dependent: nil

  validates :name, presence: true
end
