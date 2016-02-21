class Photo < ActiveRecord::Base
  belongs_to :project

  has_attached_file :photo

  validates :name, presence: true
  validates :project_id, presence: true
  validates_attachment :photo, attachment_presence: true, content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }

  rails_admin do
    list do
      field :name
      field :project
      field :photo
    end
  end
end
