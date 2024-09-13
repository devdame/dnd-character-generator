class Paladin < BaseClass
  FIRST_TIER_ABILITIES = [:str, :cha, :wis]
  SECOND_TIER_ABILITIES = [:dex, :int, :con]

  HIT_DIE = 10
  SKILL_BASE = 2
  CLASS_SKILLS = [:concentration, :craft, :diplomacy, :handle_animal, :heal, :knowledge_nobility, :knowledge_religion, :profession, :ride, :sense_motive]

  # TODO: ride should be a must-have but only if they are level five or above!
  MUST_HAVE_SKILLS = [:heal, :diplomacy]
  NICE_TO_HAVE_SKILLS = []

  BASE_ATTACK_BONUSES = [[1], [2], [3], [4], [5], [6, 1], [7, 2], [8, 3], [9, 4], [10, 5], [11, 6, 1], [12, 7, 2], [13, 8, 3], [14, 9, 4], [15, 10, 5], [16, 11, 6, 1], [17, 12, 7, 2], [18, 13, 8, 3], [19, 14, 9, 4], [20, 15, 10, 5]]

  PREFERRED_SAVES = [:fortitude]
end
