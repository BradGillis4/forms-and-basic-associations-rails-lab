class Note < ActiveRecord::Base
  # add associations here
  belongs_to :song
end


# Genre
# has a name attribute (String)
# has many songs
# Note
# has content attribute (String)
# belongs to a Song