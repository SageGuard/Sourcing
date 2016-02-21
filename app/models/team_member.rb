class TeamMember < ActiveRecord::Base

  has_attached_file :photo

  validates :name, presence: true
  validates :title, presence: true
  validates_attachment :photo, attachment_presence: true, content_type: { content_type: ["image/jpeg", "image/png", "image/gif"] }
end
