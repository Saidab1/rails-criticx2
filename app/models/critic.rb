class Critic < ApplicationRecord
  belongs_to :game
  validates :username, :game, presence: true
  validates :username, length: {in: 2..12}, format: {with: /\A[a-zA-Z0-9]+\z/}
  validates :title, :body, presence: {message: "Please write something!"}
end
