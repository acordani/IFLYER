class Announce < ActiveRecord::Base

  has_many :users
  has_attachments :photos, maximum: 10

end
