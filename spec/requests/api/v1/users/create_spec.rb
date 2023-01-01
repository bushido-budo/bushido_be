# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'create user', type: :request do
  describe 'happy path create user' do
    before :each do
      BeltRank.create!(id: 1, rank: 'white')
      @user_params = {
        first_name: 'Generic',
        last_name: 'Name',
        email: 'email@example.com',
        address: '1234 South St., Town, ST, 12345',
        password: 'password',
        password_confirmation: 'password'
      }
      headers = { 'CONTENT_TYPE' => 'application/json' }
      post api_v1_users_path, headers: headers, params: JSON.generate(user: @user_params)
    end

    it 'creates a new user' do
      user = User.last

      expect(user).to be_a User
      expect(user.student?).to be true
      expect(user.first_name).to eq(@user_params[:first_name])
    end

    it 'has successful response' do
      user_response = JSON.parse(response.body, symbolize_names: true)

      expect(response).to be_successful
      expect(response.status).to be 200
      expect(user_response[:data]).to have_key :id
      expect(user_response[:data]).to have_key :first_name
      expect(user_response[:data]).to have_key :last_name
      expect(user_response[:data]).to have_key :user_status
      expect(user_response[:data]).to have_key :current_belt_rank
      expect(user_response[:data]).to have_key :belt_test_metrics

      expect(user_response[:data][:first_name]).to eq(@user_params[:first_name])
      expect(user_response[:data][:current_belt_rank]).to eq('white')
      expect(user_response[:data][:belt_test_metrics][:student_average][:jump_rope]).to eq(nil)
    end
  end
end
