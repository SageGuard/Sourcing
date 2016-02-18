class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :recoverable,
         :rememberable, :trackable, :validatable, :registerable

  validates :email, presence: true
  validates :password, presence: true
  validates :password_confirmation, presence: true

  def admin?
    self.admin
  end
end
