class Project < ActiveRecord::Base
  has_many :photos

  has_attached_file :spec

  validates :title, presence: true
  validates :subtitle, presence: true
  validates :description, presence: true
  validates :category, presence: true
  validates_attachment :spec, content_type: { content_type: ["application/msword", "application/pdf", "application/vnd.openxmlformats-officedocument.wordprocessingml.document"] }

  rails_admin do
    list do
      field :title
      field :subtitle
      field :category
      field :description
    end
  end

  def self.all_project_names
    names = []
    projects = Project.all

    projects.each do |p|
      names.push p.title
    end

    return names
  end
end
