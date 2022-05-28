class Product < ApplicationRecord
    has_attached_file :avatar, styles:{medium: "300x300>",thumb:"100x100>"}, validate_media_type: false
    validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
  
end
