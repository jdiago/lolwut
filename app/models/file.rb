class File < ActiveRecord::Base
  attr_accessible :name, :thing
  has_attached_file :thing
end
