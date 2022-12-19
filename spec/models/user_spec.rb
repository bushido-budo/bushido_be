# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    it { should validate_presence_of :first_name }
    it { should validate_presence_of :last_name }
    it { should validate_presence_of :user_status }
    it { should validate_presence_of :email }
    it { should validate_uniqueness_of(:email).ignoring_case_sensitivity }
    it { should have_secure_password }
  end

  describe 'relationships' do
    it { should have_many :user_belt_ranks }
    it { should have_many :belt_ranks }
    it { should have_many :blocking_systems }
    it { should have_many :blocks }
    it { should have_many :combinations }
    it { should have_many :grab_defenses }
    it { should have_many :kata_forms }
    it { should have_many :kata_skill_levels }
    it { should have_many :kata_skills }
    it { should have_many :kempo_techniques }
    it { should have_many :club_techniques }
    it { should have_many :kicks }
    it { should have_many :foot_works }
    it { should have_many :kick_defenses }
    it { should have_many :skills }
    it { should have_many :stances }
    it { should have_many :kicks_of_the_four_tides }
    it { should have_many :strikes }
  end
end
