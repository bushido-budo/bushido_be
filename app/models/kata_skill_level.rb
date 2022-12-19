# frozen_string_literal: true

class KataSkillLevel < ApplicationRecord
  belongs_to :belt_rank
  has_many :kata_skills
end
