class Monk < BaseClass
  # TODO: eh??
  FIRST_TIER_ABILITIES = [:str, :dex, :wis]
  SECOND_TIER_ABILITIES = [:con, :cha, :int]

  HIT_DIE = 8
  SKILL_BASE = 4
  CLASS_SKILLS = [:balance, :climb, :concentration, :craft, :diplomacy, :escape_artist, :hide, :jump, :knowledge_arcana, :knowledge_religion, :listen, :move_silently, :perform, :profession, :sense_motive, :spot, :swim, :tumble]

  MUST_HAVE_SKILLS = [:tumble, :jump, :climb]
  NICE_TO_HAVE_SKILLS = [:balance]

  BASE_ATTACK_BONUSES = [[0], [1], [2], [3], [3], [4], [5], [6, 1], [6, 1], [7, 2], [8, 3], [9, 4], [9, 4], [10, 5], [11, 6, 1], [12, 7, 2], [12, 7, 2], [13, 8, 3], [14, 9, 4], [15, 10, 5]]

  PREFERRED_SAVES = [:fortitude, :reflex, :will]
end
