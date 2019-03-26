class Player < ApplicationRecord
  # has_many :player_characteristics
  # has_many :characteristics, through: :player_characteristics

  # We don't need the many to many link.
  # has_many :game_characters
  # has_many :games, through: :game_characters
  has_many :games
  belongs_to :eye_colour
  belongs_to :hair_colour

  @yes_no = %w[Yes No]

  def self.glasses
    @yes_no
  end

  def self.facial_hair
    @yes_no
  end

  def self.alive
    @yes_no
  end

  def self.wears_hat
    @yes_no
  end

  def self.gender
    %w[Male Female]
  end

  validates :glasses, inclusion: { in: self.glasses }
  validates :facial_hair, inclusion: { in: self.facial_hair }
  validates :alive, inclusion: { in: self.alive }
  validates :gender, inclusion: { in: self.gender }
  validates :wears_hat, inclusion: { in: self.wears_hat}
  
  def self.top_players
    top_players = Player.all.sort_by{ |p| p.top_score}.reverse
  end
end
