class Game < ApplicationRecord
  belongs_to :player
  has_many :game_characters
  # has_many :players, through: :game_characters - do we need this?
  has_many :game_questions
  has_many :questions, through: :game_questions

  #method that aliases "Players" as "Characters" for easier reference. We can call Game.characters to get access to all the characters in that game.
  def characters
    players #same as saying self.players
  end

  # this method will choose 25 characters for a 5x5 board. not including self.
  def self.set_up_game_characters(player_id)
    all_characters = Player.all.select{ |p| p.id != player_id}
    game_characters = all_characters.sample(25)
  end

  # we're using this in the games controller as a game attribute for the #update action. Not entirely sure I understand this.
  def picked_character
  end


end
