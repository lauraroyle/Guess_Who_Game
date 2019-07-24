class Player < ApplicationRecord
  
  has_many :game_characters
  has_many :games, through: :game_characters
  has_many :games
  has_many :player_characteristics
  has_many :characteristics, through: :player_characteristics
  mount_uploader :image, ImageUploader
  validates_processing_of :image
  validate :image_size_validation
  has_secure_password
 
  # def self.top_players
  #   top_players = Player.all.sort_by{ |p| p.top_score}.reverse
  # end

  # def next
  #   Post.where("id > ?", id).first
  # end

  def rename_img

  end

  def first_name
    name = self.name.split(' ')
    name[0]
  end

  def last_name
    name = self.name.split(' ')
    if name.length > 2
      name.shift
      return name.join('_')
    else
      return name[1]
    end
  end

  def gender
  end

  def occupation
  end

  def hair_colour
  end

  def eye_colour
  end

  def glasses
  end

  def wears_hat
  end

  def alive
  end

  def facial_hair
  end

  private

  def image_size_validation
    errors[:image] << "should be less than 500KB" if image.size > 0.5.megabytes
  end
end
