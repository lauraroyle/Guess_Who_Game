class Characteristic < ApplicationRecord
  has_one :question
  has_many :player_characteristics
  has_many :players, through: :player_characteristics

  def self.eye_colours
    Characteristic.all.first(5)
  end

  def self.hair_colours
    Characteristic.all.select do |c|
      c.id == 6 || c.id == 7 || c.id == 8 || c.id == 9 || c.id == 10 || c.id == 11
    end
  end

  def self.occupation
    Characteristic.all.select do |c|
      c.id == 12 || c.id == 13 || c.id == 14 || c.id == 15 || c.id == 16 || c.id == 17 || c.id == 18 || c.id == 19
    end
  end

  def self.gender
    Characteristic.all.select do |c|
      c.id == 20 || c.id == 21
    end
  end

  def self.alive
    Characteristic.all.select do |c|
      c.id == 22 || c.id == 23
    end
  end

  def self.glasses
    Characteristic.all.select do |c|
      c.id == 24 || c.id == 25
    end
  end

  def self.wears_hat
    Characteristic.all.select do |c|
      c.id == 26 || c.id == 27
    end
  end

  def self.facial_hair
    Characteristic.all.select do |c|
      c.id == 28 || c.id == 29
    end
  end

end
