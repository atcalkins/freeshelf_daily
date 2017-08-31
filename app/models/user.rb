class User < ApplicationRecord
  has_many :book
  has_secure_password
  validates :email,
  uniqueness: true,
  format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/ }
end

  private

  def downcase_email
    email.downcase if email
  end
