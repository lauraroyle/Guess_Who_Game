class Player < ApplicationRecord
  # has_many :player_characteristics
  # has_many :characteristics, through: :player_characteristics

  # We don't need the many to many link.
  # has_many :game_characters
  # has_many :games, through: :game_characters
  has_many :games
  belongs_to :eye_colour
  belongs_to :hair_colour

  def self.glasses
    %w[yes no]
  end

  def self.facial_hair
    %w[yes no]
  end

  def self.alive
    %w[yes no]
  end
  validates :glasses, inclusion: { in: self.glasses }
  validates :facial_hair, inclusion: { in: self.facial_hair }
  validates :alive, inclusion: { in: self.alive }

  def self.top_players
    top_players = Player.all.sort_by{ |p| p.top_score}.reverse
  end
end
