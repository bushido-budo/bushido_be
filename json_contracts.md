### POST User
request
```sh
{
  "first_name": "Jenny",
  "last_name": "McName",
  "email": "jenny@fakemail.com",
  "password": "P4$$W0rd",
  "password_confirmation": "P4$$W0rd"
}
```

### GET Animals
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
    }
  }
}
```
### GET Values
```sh
{
  "data":{
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
### GET Student (student dashboard)
```sh
{
 "data":{
    "id": 1
    "first_name": "James",
    "last_name": "Smith",
    "user_status": 0,
    "belt_rank": "purple",
    "belt_test_metrics":{
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
    },
    "current_material":{
      "blocking_system":{
        "hammer":[1,2],
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
      "club_techniques": ["side 1"],
      "combinations": {
        "purple": [4, 8, 9, 12]
      },
      "foot_works":["Chinese catwalk"],
      "grab_defenses":["single wrist grab"],
      "kata_forms":["Kata 2"],
      "kata_skills":{
        "Level_2": ["Transitions", "Timing", "Sentencing"]
      },
      "kempo_techniques":["purple belt"],
      "kick_defenses": ["Deflecting Hammer"],
      "kicks of the four tides": ["set 1", "set 2"],
      "kicks":[ "roundhouse", "spinning back", "cross behind side thrust", "spinning       side thrust"],
      "skills":[],
      "stances":["twist"],
      "strikes": {
        "linear":["tiger's claw"],
        "circular":["tiger's rake", "iron palm", "downward shuto"]
      }
    }
  }
}
```

### GET Sensei (admin dashboard)
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
    "user":{
      "first_name": "Jenny",
      "last_name": "McName",
      "current_belt_rank": "purple",
      "user_status": 1
    },
    "dojo_metrics":{
      "student_count": 50,
      "average_belt_rank": "purple"
    },
    "belt_ranks":[
      "white", "yellow", "orange", "purple", "blue", "blue with green stripe", "green", "green with brown stripe", "brown 1", "brown 2", "brown 3", "black 1", "black 2", "black 3", "black 4", "black 5"
    ],
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
        },
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
    }
  }
}
```
### Students Index (for Sensei)
```sh
{
  "data":{
    "students":[{
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
    }],
  }
}
```

### Student Show (for Sensei)
```sh
{
  "data":{
    "first_name": "Jenny",
    "last_name": "McName",
    "email": "email@fakemail.com",
    "address": "1234 Main St., Town, CO, 80301",
    "user_status": 0
    "current_belt_rank": "purple",
    "percent_material_learned": 66.7,
    "belt_rank_material":{
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
    },
    "previous_belt_ranks":{
      "white": 30,
      "yellow": 45
    },
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
      },
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
      "orange":{
        "jump rope": 150,
        "sit ups": 50,
        "balanced kicks": 30,
        "lunge pumps": 30,
        "star rating": "gold"
      }
    }
  }
}
```
### Belt Ranks Show
```sh
{
  "data":{
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
```