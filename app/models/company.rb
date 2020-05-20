class Company < ApplicationRecord
    has_many :game
    validates :name, length: { maximum: 40}, presence: true, uniqueness: true
    validates :country, presence: true
end
