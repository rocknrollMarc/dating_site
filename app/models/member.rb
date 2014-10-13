class Member < ActiveRecord::Base

  has_attached_file :avatar
  # Validate content type
  validates_attachment_content_type :avatar,
    :content_type => /\Aimage/
  # Validate filename
  validates_attachment_file_name :avatar,
    :matches => [/png\Z/, /jp?g\Z/]

  has_one :member_info, autosave: true

end
