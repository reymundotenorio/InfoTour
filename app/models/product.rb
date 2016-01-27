class Product < ActiveRecord::Base
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: ":style/missing_avatar.jpg"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

    validates_attachment_presence :avatar
    validates_attachment_content_type :avatar, :content_type => ["image/jpeg", "image/gif", "image/png"]
    validates_attachment_size :avatar, :less_than => 5.megabytes

end
