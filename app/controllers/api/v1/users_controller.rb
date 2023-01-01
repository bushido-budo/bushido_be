# frozen_string_literal: true

module Api
  module V1
    class UsersController < ApplicationController
      def create
        user = User.new(user_params)
        user.user_status = 0
        if user.save
          user.user_belt_ranks.create!(new_belt_params)
          render json: UsersSerializer.new_user(user)
        else
          render json: { data: { error: user.errors.full_messages.to_sentence } }, status: 400
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

      def new_belt_params
        {
          belt_rank_id: 1,
          jump_rope: nil,
          sit_ups: nil,
          balanced_kicks: nil,
          lunge_pumps: nil
        }
      end
    end
  end
end
