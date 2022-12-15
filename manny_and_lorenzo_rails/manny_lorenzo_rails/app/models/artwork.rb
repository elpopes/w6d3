# == Schema Information
#
# Table name: artworks
#
#  id         :bigint           not null, primary key
#  title      :string           not null
#  image_url  :string           not null
#  artist_id  :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Artwork < ApplicationRecord
    # validates :image_url, :title, :artist_id

    belongs_to :artist, 
            class_name: "User", 
            foreign_key: "artist_id"
    
end
