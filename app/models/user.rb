# frozen_string_literal: true

class User < ApplicationRecord
  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_presence_of :address
  validates_presence_of :user_status
  validates_presence_of :email
  validates_uniqueness_of :email, case_sensitive: false
  has_secure_password

  has_many :user_belt_ranks

  before_save :downcase_email

  def downcase_email
    email&.downcase!
  end
end
