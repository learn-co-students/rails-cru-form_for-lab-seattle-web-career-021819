class Artist < ApplicationRecord
  has_many :songs

  def to_s
    "#{self.name} - #{self.bio}"
  end
end
