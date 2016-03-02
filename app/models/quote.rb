class Quote < ActiveRecord::Base
  has_attached_file :project_spec

  validates :name, presence: true
  validates :email, presence: true
  validates :telephone, presence: true

  validates_attachment :project_spec, content_type: { content_type: [
                        "application/pdf",
                        "application/vnd.ms-excel",
                        "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet",
                        "application/msword",
                        "application/vnd.openxmlformats-officedocument.wordprocessingml.document",
                        "text/plain"
                        ] }

  rails_admin do
    list do
      field :name
      field :company
      field :email
      field :telephone
      field :website
      field :address
      field :address2
      field :city
      field :state
      field :country
      field :zipcode
      field :industry
      field :product
      field :project_timing
      field :budget
      field :project_spec
    end
  end
end
