class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :recoverable,
         :rememberable, :trackable, :validatable #, :registerable

  validates :email, presence: true
  validates :password, presence: true
  validates :password_confirmation, presence: true

  def admin?
    self.dashboard_admin
  end

  # Patches Rails_admin error
  def admin
    self.dashboard_admin
  end


  rails_admin do
    list do
      field :email
      field :dashboard_admin
    end

  end
end
