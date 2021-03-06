class Game < ApplicationRecord
  belongs_to :company
  has_many :critic
  validates :name, :genre, :price, :release_date, :company, presence: true
  validates :genre, inclusion: {in: ["Simulator", "Adventure", "Strategy", "Role-playing (RPG)", "Racing", "Shooter", "Fighting", "Sport"]}
  validates :price, numericality: {greater_than_or_equal_to: 0}
end
