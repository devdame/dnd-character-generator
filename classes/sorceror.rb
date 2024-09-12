class Sorceror < BaseClass
  FIRST_TIER_ABILITIES = [:cha, :dex, :con]
  SECOND_TIER_ABILITIES = [:wis, :int, :str]

  HIT_DIE = 4
  SKILL_BASE = 2
  CLASS_SKILLS = []

  BASE_ATTACK_BONUSES = [[0], [1], [1], [2], [2], [3], [3], [4], [4], [5], [5], [6, 1], [6, 1], [7, 2], [7,2], [8, 3], [8, 3], [9, 4], [9, 4], [10, 5]]

  PREFERRED_SAVES = [:will]
end
