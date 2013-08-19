class Image < ActiveRecord::Base
  attr_accessible :imageable, :imageable_id, :imageable_type
  belongs_to      :imageable, polymorphic: true
end
