class Player < ApplicationRecord
  # has_many :player_characteristics
  # has_many :characteristics, through: :player_characteristics

  # We don't need the many to many link.
  # has_many :game_characters
  # has_many :games, through: :game_characters
  has_many :games
  has_many :player_characteristics
  has_many :characteristics, through: :player_characteristics

  def self.top_players
    top_players = Player.all.sort_by{ |p| p.top_score}.reverse
  end
end
