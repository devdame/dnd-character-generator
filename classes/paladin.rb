class Paladin < BaseClass
  FIRST_TIER_ABILITIES = [:str, :wis, :con]
  SECOND_TIER_ABILITIES = [:dex, :int, :cha]
  CLASS_SKILLS = []
  HIT_DIE = 10
  SKILL_BASE = 2
  BASE_ATTACK_BONUSES = [[1], [2], [3], [4], [5], [6, 1], [7, 2], [8, 3], [9, 4], [10, 5], [11, 6, 1], [12, 7, 2], [13, 8, 3], [14, 9, 4], [15, 10, 5], [16, 11, 6, 1], [17, 12, 7, 2], [18, 13, 8, 3], [19, 14, 9, 4], [20, 15, 10, 5]]
end
