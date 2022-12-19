# frozen_string_literal: true

class BeltRank < ApplicationRecord
  has_many :user_belt_ranks
  has_many :blocking_systems
  has_many :blocks, through: :blocking_systems
  has_many :combinations
  has_many :grab_defenses
  has_many :kata_forms
  has_many :kata_skill_levels
  has_many :kata_skills, through: :kata_skill_levels
  has_many :kempo_techniques
  has_many :club_techniques
  has_many :kicks
  has_many :foot_works
  has_many :kick_defenses
  has_many :skills
  has_many :stances
  has_many :kicks_of_the_four_tides
  has_many :strikes
end
