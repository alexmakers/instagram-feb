class Post < ActiveRecord::Base
  has_attached_file :picture, styles: { medium: "300x300>", thumb: "100x100>" }

  validates :description, presence: true
  validates_attachment_content_type :picture, content_type: ["image/jpg", "image/jpeg", "image/png"]
end
