class Plant < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  
  include PgSearch
  pg_search_scope :search_by_name_and_latin_name,
                  against: [:name, :latin_name],
                  using: {
                    tsearch: { prefix: true }
                  }
end
