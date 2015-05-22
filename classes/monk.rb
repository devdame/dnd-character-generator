class Monk < BaseClass
  FIRST_TIER_ABILITIES = [:str, :dex, :wis]
  SECOND_TIER_ABILITIES = [:con, :cha, :int]
  CLASS_SKILLS = [:Balance, :climb, :concentration, :craft, :diplomacy, :escape_artist, :hide, :jump, :knowledge_arcana, :knowledge_religion, :listen, :move_silently, :perform, :profession, :sense_motive, :spot, :swim, :Tumble]
  HIT_DIE = 8
  SKILL_BASE = 4
  BASE_ATTACK_BONUSES = [[0], [1], [2], [3], [3], [4], [5], [6, 1], [6, 1], [7, 2], [8, 3], [9, 4], [9, 4], [10, 5], [11, 6, 1], [12, 7, 2], [12, 7, 2], [13, 8, 3], [14, 9, 4], [15, 10, 5]]
end
