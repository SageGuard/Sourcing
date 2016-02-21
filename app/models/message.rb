class Message < ActiveRecord::Base
  validates :name, presence: true
  validates :email, presence: true
  validates :message, presence: true

  rails_admin do
    list do
      field :name
      field :email
      field :subject
      field :message
    end
  end
end
