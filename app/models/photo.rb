class Photo < ActiveRecord::Base
  belongs_to :bow
  mount_uploader :picture, PictureUploader

end
