# frozen_string_literal: true

class UsersSerializer
  # rubocop:disable Metrics/MethodLength
  # rubocop:disable Metrics/AbcSize
  def self.new_user(user)
    {
      'data': {
        'id': user.id,
        'first_name': user.first_name,
        'last_name': user.last_name,
        'user_status': user.user_status,
        'current_belt_rank': user.belt_ranks.last.rank,
        'belt_test_metrics': {
          "student_average": {
            "jump_rope": user.user_belt_ranks.last.jump_rope,
            "sit_ups": user.user_belt_ranks.last.sit_ups,
            "balanced_kicks": user.user_belt_ranks.last.balanced_kicks,
            "lunge_pumps": user.user_belt_ranks.last.lunge_pumps
          },
          "dojo_average": {
            "jump_rope": 98,
            "sit_ups": 67,
            "balanced_kicks": 38,
            "lunge_pumps": 42
          }
        },
        "current_material": {
          "blocking_system": nil,
          "blocks": [],
          "club_techniques": [],
          "combinations": {},
          "foot_works": [],
          "grab_defenses": [],
          "kata_forms": [],
          "kata_skills": {},
          "kempo_techniques": [],
          "kick_defenses": [],
          "kicks_of_the_four_tides": [],
          "kicks": [],
          "skills": [],
          "stances": [],
          "strikes": {
            "linear": [],
            "circular": []
          }
        }
      }
    }
  end
  # rubocop:enable Metrics/MethodLength
  # rubocop:enable Metrics/AbcSize
end
