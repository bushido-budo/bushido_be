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

  describe 'sad path testing create new user' do
    it 'user must enter a first and last name' do
      user_params = {
        email: 'email@example.com',
        address: '1234 South St., Town, ST, 12345',
        password: 'password',
        password_confirmation: 'password'
      }
      headers = { 'CONTENT_TYPE' => 'application/json' }
      post api_v1_users_path, headers: headers, params: JSON.generate(user: user_params)
      user_response = JSON.parse(response.body, symbolize_names: true)

      expect(response).to_not be_successful
      expect(user_response[:data]).to have_key(:error)
      expect(user_response[:data][:error]).to eq("First name can't be blank and Last name can't be blank")
    end

    it 'user must enter an email' do
      user_params = {
        first_name: 'Generic',
        last_name: 'Name',
        # email: 'email@example.com',
        address: '1234 South St., Town, ST, 12345',
        password: 'password',
        password_confirmation: 'password'
      }
      headers = { 'CONTENT_TYPE' => 'application/json' }
      post api_v1_users_path, headers: headers, params: JSON.generate(user: user_params)
      user_response = JSON.parse(response.body, symbolize_names: true)

      expect(response).to_not be_successful
      expect(user_response[:data]).to have_key(:error)
      expect(user_response[:data][:error]).to eq("Email can't be blank")
    end

    it 'user must have uniqe email' do
      BeltRank.create!(id: 1, rank: 'white')
      user_params = {
        first_name: 'Generic',
        last_name: 'Name',
        email: 'email@example.com',
        address: '1234 South St., Town, ST, 12345',
        password: 'password',
        password_confirmation: 'password',
        user_status: 0
      }

      User.create!(user_params)

      headers = { 'CONTENT_TYPE' => 'application/json' }
      post api_v1_users_path, headers: headers, params: JSON.generate(user: user_params)
      user_response = JSON.parse(response.body, symbolize_names: true)

      expect(response).to_not be_successful
      expect(user_response[:data]).to have_key(:error)
      expect(user_response[:data][:error]).to eq('Email has already been taken')
    end

    it 'address must exist' do
      user_params = {
        first_name: 'Generic',
        last_name: 'Name',
        email: 'email@example.com',
        # address: '1234 South St., Town, ST, 12345',
        password: 'password',
        password_confirmation: 'password'
      }
      headers = { 'CONTENT_TYPE' => 'application/json' }
      post api_v1_users_path, headers: headers, params: JSON.generate(user: user_params)
      user_response = JSON.parse(response.body, symbolize_names: true)

      expect(response).to_not be_successful
      expect(user_response[:data]).to have_key(:error)
      expect(user_response[:data][:error]).to eq("Address can't be blank")
    end

    it 'must have password' do
      user_params = {
        first_name: 'Generic',
        last_name: 'Name',
        email: 'email@example.com',
        address: '1234 South St., Town, ST, 12345',
        # password: 'password',
        password_confirmation: 'password'
      }
      headers = { 'CONTENT_TYPE' => 'application/json' }
      post api_v1_users_path, headers: headers, params: JSON.generate(user: user_params)
      user_response = JSON.parse(response.body, symbolize_names: true)

      expect(response).to_not be_successful
      expect(user_response[:data]).to have_key(:error)
      expect(user_response[:data][:error]).to eq("Password can't be blank")
    end

    it 'password and password_confirmation must match' do
      BeltRank.create!(id: 1, rank: 'white')

      user_params = {
        first_name: 'Generic',
        last_name: 'Name',
        email: 'email@example.com',
        address: '1234 South St., Town, ST, 12345',
        password: 'password',
        password_confirmation: ''
      }
      headers = { 'CONTENT_TYPE' => 'application/json' }
      post api_v1_users_path, headers: headers, params: JSON.generate(user: user_params)
      user_response = JSON.parse(response.body, symbolize_names: true)

      expect(response).to_not be_successful
      expect(user_response[:data]).to have_key(:error)
      expect(user_response[:data][:error]).to eq("Password confirmation doesn't match Password")
    end
  end
end
