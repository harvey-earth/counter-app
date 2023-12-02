class Server < ApplicationRecord
    has_many :visits

    validates :name, presence: true
end
