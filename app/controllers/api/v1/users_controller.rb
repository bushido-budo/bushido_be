# frozen_string_literal: true

module Api
  module V1
    class UsersController < ApplicationController
      def create
        user = User.new(user_params)
        user.user_status = 0
        if user.save
          render json: UsersSerializer.new_user(user)
        else
          render json: user.errors.full_messages.to_sentence
        end
      end

      private

      def user_params
        params.require(:user).permit(
          :first_name,
          :last_name,
          :email,
          :address,
          :password,
          :password_confirmation
        )
      end
    end
  end
end
