# frozen_string_literal: true

class UsersSerializer
  def self.new_user(user)
    {
      'data': {
        'id': user.id,
        'first_name': user.first_name,
        'last_name': user.last_name,
        'user_status': user.user_status,
        'current_belt_rank': user.belt_ranks,
        'belt_test_metrics': {
          "student_average": {
            "jump rope": nil,
            "sit ups": nil,
            "balanced kicks": nil,
            "lunge pumps": nil
          },
          "dojo_average": {
            "jump rope": 98,
            "sit ups": 67,
            "balanced kicks": 38,
            "lunge pumps": 42
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
end
