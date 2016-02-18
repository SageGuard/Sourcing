class Project < ActiveRecord::Base
  validates :title, presence: true
  validates :subtitle, presence: true
  validates :description, presence: true
  validates :category, presence: true
end
