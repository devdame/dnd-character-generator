class Wizard < BaseClass
  FIRST_TIER_ABILITIES = [:int, :wis, :dex]
  SECOND_TIER_ABILITIES = [:con, :str, :cha]
  CLASS_SKILLS = []
  HIT_DIE = 4
  SKILL_BASE = 2
  BASE_ATTACK_BONUSES = [[0], [1], [1], [2], [2], [3], [3], [4], [4], [5], [5], [6, 1], [6, 1], [7, 2], [7,2], [8, 3], [8, 3], [9, 4], [9, 4], [10, 5]]
end
