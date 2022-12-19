# frozen_string_literal: true

class User < ApplicationRecord
  validates_presences_of :first_name
  validates_presences_of :last_name
  validates_presences_of :address
  validates_presences_of :user_status
  validates_uniqueness :email, case_sensitive: false
  has_secure_password

  has_many :user_belt_ranks

  before_save :downcase_email

  def downcase_email
    email&.downcase!
  end
end
