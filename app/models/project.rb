class Project < ActiveRecord::Base
  has_many :photos

  validates :title, presence: true
  validates :subtitle, presence: true
  validates :description, presence: true
  validates :category, presence: true
end
