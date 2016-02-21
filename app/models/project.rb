class Project < ActiveRecord::Base
  has_many :photos

  validates :title, presence: true
  validates :subtitle, presence: true
  validates :description, presence: true
  validates :category, presence: true
  validates :photos, presence: true

  rails_admin do
    list do
      field :title
      field :subtitle
      field :category
      field :description
    end
  end
end
