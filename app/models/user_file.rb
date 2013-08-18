class UserFile < ActiveRecord::Base
  has_attached_file :thing
end
