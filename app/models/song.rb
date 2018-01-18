class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre
  has_many :notes
  validates :title, presence: true

  def artist_name
    self.artist.name
  end

  def genre_name
    self.genre.name
  end

end
