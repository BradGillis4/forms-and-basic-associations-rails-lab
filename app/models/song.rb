class Song < ActiveRecord::Base
  # add associations here

  belongs_to :artist
  belongs_to :genre
  has_many :notes

  def artist_name
    self.artist ? self.artist.name : nil
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by(name: name)
  end

  def genre_id=(id)
    self.genre = Genre.find(id)
  end

  def song_notes=(notes)
    notes.each do |content|
      note = Note.create(content: content)
      self.notes << note
    end
  end


#   has a title attribute (String)
# belongs to an Artist
# belongs to a Genre
# has many Notes
end
