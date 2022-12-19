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
  has_many :belt_ranks, through: :user_belt_ranks
  has_many :blocking_systems, through: :belt_ranks
  has_many :blocks, through: :blocking_systems
  has_many :combinations, through: :belt_ranks
  has_many :grab_defenses, through: :belt_ranks
  has_many :kata_forms, through: :belt_ranks
  has_many :kata_skill_levels, through: :belt_ranks
  has_many :kata_skills, through: :kata_skill_levels
  has_many :kempo_techniques, through: :belt_ranks
  has_many :club_techniques, through: :belt_ranks
  has_many :kicks, through: :belt_ranks
  has_many :foot_works, through: :belt_ranks
  has_many :kick_defenses, through: :belt_ranks
  has_many :skills, through: :belt_ranks
  has_many :stances, through: :belt_ranks
  has_many :kicks_of_the_four_tides, through: :belt_ranks
  has_many :strikes, through: :belt_ranks

  enum user_status: %i[student sensei]
end
