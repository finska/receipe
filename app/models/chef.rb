class Chef < ApplicationRecord
  before_save { self.email = email.downcase! }
  validates :name, presence: true, length: { minimum: 3, maximum: 100 }
  validates :email, presence: true, uniqueness: { case_sensitive: false }
  validates_format_of :email, :with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
end