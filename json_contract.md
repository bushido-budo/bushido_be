### Default
```sh
{
  "data":{
    "animals":{
      "Dragon":["heavy strikes", "fighting spirit", "adaptability", "rides the wind", "spinning", "wisdom", "rising and falling"
      ],
      "Leopard":["speed", "strong tendons", "in-and-out", "strongest for its size", "coordination", "footwork", "attacks at angles", "machine gun attacks"
      ],
      "Tiger":[
        "power", "tenacity", "courage", "ripping and tearing", "strong back", "physically strongest", "always pressing", "strong bones"
      ],
      "Crane":[
        "agility", "momentum", "explosive", "balance", "relaxed", "graceful", "patience", "long reach", "strong ankles", "hopping"
      ],
      "Snake":[
        "zig-zagging", "wrapping", "attack vital areas", "chi", "deceptive", "pinpoint accuracy", "timing", "cunning"
      ]
    },
    "values":{
      "heart": "definition"
      "attitude": "definition"
      "integrity": "definition"
      "respect": "definition"
      "self-control": "definition"
    }
  }
}
```
### GET Student
```sh
{
  "data":{
    "first name": "James",
    "last name": "Smith",
    "email": "email@fakemail.com",
    "address": "1234 Main St., Town, CO, 80301",
    "user status": 0,
    "belt rank": "purple",
    "belt test metrics":{
      "white":{
        "jump rope": nil,
        "sit ups": nil,
        "balanced kicks": nil,
        "lunge pumps": nil,
        "star rating": nil
      },
      "yellow":{
        "jump rope": 100,
        "sit ups": 35,
        "balanced kicks": 25,
        "lunge pumps": 18,
        "star rating": "silver"
      },
      "purple":{
        "jump rope": 150,
        "sit ups": 50,
        "balanced kicks": 30,
        "lunge pumps": 30,
        "star rating": "gold"
      }
    }
    "junior": false,
    "material":{
      "blocking system":{
        "8 point fist": [
          "fist 1", "fist 2", "fist 3", "fist 4", "fist 5", "fist 6", "fist 7", "fist 8"
        ],
        "8 point knife": [
          "knife 1", "knife 2", "knife 3", "knife 4", "knife 5", "knife 7", "knife 8"
        ],
        "8 point fist counter": {
          "fist 1": "back 2 knuckle",
          "fist 2": "back 2 knuckle",
          "fist 3": "cross hammer",
          "fist 4": "cross hammer",
          "fist 5": "hammer",
          "fist 6": "hammer",
          "fist 7": "thrust punch",
          "fist 8": "thrust punch"
        },
        "hammer":[
          1,2
        ],
        "wing block",
        "8 point knife counter":{
          "knife 1": "palm heel", 
          "knife 2": "palm heel", 
          "knife 3": "cross shuto",
          "knife 4": "cross shuto",
          "knife 5": "iron palm",
          "knife 6": "iron palm",
          "knife 7": "chicken wrist",
          "knife 8": "chicken wrist"
        }
        },
      "club techniques": [
        "side 1"
      ],
      "combinations": {
        "white": [6]
        "yellow": [7, 3]
        "orange": [2, 5, 18]
        "purple": [4, 8, 9, 12]
      },
      "foot works":[
        "step glide", "shuffle", "Chinese catwalk"
      ],
      "grab defenses":[
        "single wrist grab"
      ],
      "kata_forms":[
        "Pinan 1", "Kata 1", "Kata 2"
      ],
      "kata_skills":{
        "Level 1": [
          "Stances", "Proper Range of Motion", "Targeting", "Clean Chambers", "Posture"
        ],
        "Level 2": [
          "Transitions", "Timing", "Sentencing"
        ]
        },
      "kempo techniques":[
        "white belt", "yellow belt", "orange belt", "purple belt"
      ],
      "kick defenses": [
        "Deflecting Hammer"
      ],
      "kicks of the four tides": [
        "set 1", "set 2"
      ],
      "kicks":[
        "front ball", "rising knee", "front instep", "side blade", "back kick", "front thrust", "side thrust", "outward crescent", "roundhouse", "spinning back", "cross behind side thrust", "spinning side thrust"
      ],
      "skills":[
        "right foot out and elbows", "punch in front two knuckle", "clock drills", "dragon breathes fire", "slapping out", "punch in hook punch"
      ],
      "stances":[
        "horse", "flamingo", "half moon", "cat", "twist"
      ],
      "strikes": {
        "linear":
        [
          "front two knuckle", "thrust punch", "back two knuckle", "palm heel", "hammer",  "spearhand", "tiger's claw"
        ],
        "circular":[
          "cross shuto", "rising elbow", "roundhouse elbow", "backfist", "hook punch", "side elbow", "rear elbow", "downward elbow", "chicken wrist", "tiger's rake", "iron palm", "downward shuto"
        ]
        }
      }
    }
  }
}
```

### POST User
request
```sh
{
  "data":{
    "first_name": "Jenny",
    "last_name": "McName",
    "email": "jenny@fakemail.com",
    "password": "P4$$W0rd",
    "password_confirmation": "P4$$W0rd"
  }
}
```
response
```sh
{
  "success": "Welcome Jenny McName"
}
```
### GET Sensei
request
```sh
{
  "email": "generic@email.com",
  "password": "g3n3r!c_p4$$w0rd"
}
```
response
```sh
{
  "data":{
    "dojo_metrics":{
      "student_count": 50,
      "average_belt_rank": "purple"
    },
    "belt_ranks_fitness_challenge":{
      "star_rating":{
        "default":{
          "gold":{
            "jump rope": 150,
            "sit ups": 50,
            "balanced kicks": 45,
            "lunge pumps": 45
          },
          "silver":{
            "jump rope": 100,
            "sit ups": 40,
            "balanced kicks": 35,
            "lunge pumps": 35
          },
          "bronze":{
            "jump rope": 75,
            "sit ups": 30,
            "balanced kicks": 25,
            "lunge pumps": 25
          }
        }
        "black_belts":{
          "gold":{
            "jump rope": 200,
            "sit ups": 75,
            "balanced kicks": 75,
            "lunge pumps": 75
          },
          "silver":{
            "jump rope": 150,
            "sit ups": 50,
            "balanced kicks": 50,
            "lunge pumps": 50
          },
          "bronze":{
            "jump rope": 125,
            "sit ups": 35,
            "balanced kicks": 35,
            "lunge pumps": 35
          }
        }
      },
      "dojo_average":{
        "default":{
          "jump rope": 85,
          "sit ups": 40,
          "balanced kicks": 32,
          "lunge pumps": 28
        },
        "black_belt":{
          "jump rope": 122,
          "sit ups": 53,
          "balanced kicks": 63,
          "lunge pumps": 76
        }
      },
      "dojo_records":{
        "jump rope": {
          "Some Name": 284
        },
        "sit ups": {
          "Another Person": 87
        },
        "balanced kicks": {
          "Maybe Different": 56
        },
        "lunge pumps": {
          "Yet Another": 82
        }
      }
    },
    "students":[
      {
        "first_name": "Jenny",
        "last_name": "McName",
        "current_belt_rank": "Orange",
        "percent_skills_learned": 66.7,
        "belt_rank_fitness_metrics":{
          "last_belt_test":{
            "jump rope": 85,
            "sit ups": 40,
            "balanced kicks": 32,
            "lunge pumps": 28
          },
          "student_average":{
            "jump rope": 72,
            "sit ups": 44,
            "balanced kicks": 21,
            "lunge pumps": 30
          },
          "dojo_average":{
            "jump rope": 98,
            "sit ups": 67,
            "balanced kicks": 38,
            "lunge pumps": 42
          }
        }
      },
      {
        "first_name": "David",
        "last_name": "Nameson",
        "current_belt_rank": "Purple",
        "percent_skills_learned": 25,
        "belt_rank_fitness_metrics":{
          "last_belt_test":{
            "jump rope": 85,
            "sit ups": 40,
            "balanced kicks": 32,
            "lunge pumps": 28
          },
          "student_average":{
            "jump rope": 72,
            "sit ups": 44,
            "balanced kicks": 21,
            "lunge pumps": 30
          },
          "dojo_average":{
            "jump rope": 98,
            "sit ups": 67,
            "balanced kicks": 38,
            "lunge pumps": 42
          }
        }
      }
    ],
    "belt_rank_material":{
      "white":{
        "blocking system":{
          "8 point fist": [
            "fist 1", "fist 2", "fist 3", "fist 4", "fist 5", "fist 6", "fist 7", "fist 8"
          ]
        },
        "club_techniques": nil,
        "combintations":[
          6
        ],
        "foot_works": [],
        "grab_defenses": nil,
        "kata_forms": nil,
        "kata_skill_levels": nil,
        "kata_skills": [],
        "kempo_techniques": "white belt kempo",
        "kick_defenses": nil,
        "kicks_oc_the_four_tides": [],
        "kicks":[
          "front ball", "rising knee"
        ],
        "skills":[
          "right foot out and elbows", "punch in front two knuckle"
        ],
        "stances":[
          "Front Position", "horse", "Flamingo", "half moon"
        ],
        "strikes":{
          "linear":[
            "front two knuckle", "thrust punch", "back two knuckle", "palm heel", "hammer"
          ],
          "circular":[]
        }
      },
      "yellow":{
        "blocking system":{
          "8 point knife": [
            "knife 1", "knife 2", "knife 3", "knife 4", "knife 5", "knife 6", "knife 7", "knife 8"
          ]
        },
        "club_techniques": nil,
        "combintations":[
          7, 3
        ],
        "foot_works": [],
        "grab_defenses": nil,
        "kata_forms": "Pinan 1",
        "kata_skill_levels": "level 1",
        "kata_skills": [
          "stance", "proper range of motion", "targeting", "clean chambers", "posture"
        ],
        "kempo_techniques": "yellow belt kempo",
        "kick_defenses": nil,
        "kicks_of_the_four_tides": nil,
        "kicks":[
          "front instep", "side blade", "back kick"
        ],
        "skills":[
          "clock drills", "dragon breathes fire"
        ],
        "stances":[],
        "strikes":{
          "linear":[],
          "circular":[
            "cross shuto", "rising elbow", "roundhouse elbow", "backfist"
          ]
        }
      },
      "orange":{
        "blocking system":[{
          "8_point_fist_with_counters": {
            "fist 1": "back 2 knuckle",
            "fist 2": "back 2 knuckle",
            "fist 3": "cross hammer",
            "fist 4": "cross hammer",
            "fist 5": "hammer",
            "fist 6": "hammer",
            "fist 7": "thrust punch",
            "fist 8": "thrust punch"
          }
        },
        "hammer 1",
        "hammer 2"
        ],
        "club_techniques": nil,
        "combintations":[
          2, 5, 18
        ],
        "foot_works": ["shuffle"],
        "grab_defenses": nil,
        "kata_forms": "Kata 1",
        "kata_skill_levels": nil,
        "kata_skills": [],
        "kempo_techniques": "orange belt kempo",
        "kick_defenses": nil,
        "kicks_of_the_four_tides": nil,
        "kicks":[
          "front thrust", "side thrust", "outward crescent"
        ],
        "skills":[
          "slapping out"
        ],
        "stances":["cat stance"],
        "strikes":{
          "linear":[
            "side elbow", "rear elbow", "downward elbow", "chicken wrist", "spearhand"
            ],
          "circular":[
            "hook punch"
          ]
        }
      },
      "purple":{
        "blocking system":[{
          "8_point_knife_with_counters": {
            "knife 1": "palm heel",
            "knife 2": "palm heel",
            "knife 3": "shuto",
            "knife 4": "shuto",
            "knife 5": "iron palm",
            "knife 6": "iron palm",
            "knife 7": "chicken wrist",
            "knife 8": "chicken wrist"
          }
        },
        "wing block"
        ],
        "club_techniques": "side 1",
        "combintations":[
          4, 8, 9, 12
        ],
        "foot_works": ["Chinese catwalk"],
        "grab_defenses": "single wrist grab",
        "kata_forms": "Kata 2",
        "kata_skill_levels": "level 2",
        "kata_skills": ["transitions", "timing", "sentencing"],
        "kempo_techniques": "purple belt kempo",
        "kick_defenses": "deflecting hammer",
        "kicks_of_the_four_tides": ["set 1", "set 2"],
        "kicks":[
          "roundhouse", "spinning side kick", "cross behind side thrust", "spinning side thrust"
        ],
        "skills":[],
        "stances":["twist stance"],
        "strikes":{
          "linear":[
            "iron palm", "downward shuto"
            ],
          "circular":[
            "tiger's claw", "tiger's rake"
          ]
        }
      }
    }
  }
}
```