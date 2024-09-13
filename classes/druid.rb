class Druid < BaseClass
  FIRST_TIER_ABILITIES = [:wis, :con, :cha]
  SECOND_TIER_ABILITIES = [:dex, :str, :int]

  HIT_DIE = 8
  SKILL_BASE = 4
  CLASS_SKILLS =  [:concentration, :craft, :diplomacy, :handle_animal, :heal, :knowledge_nature, :listen, :profession, :ride, :spellcraft, :spot, :survival, :swim]

  MUST_HAVE_SKILLS = [:knowledge_nature, :handle_animal, :survival]
  NICE_TO_HAVE_SKILLS = [:swim, :ride]

  BASE_ATTACK_BONUSES = [[0], [1], [2], [3], [3], [4], [5], [6, 1], [6, 1], [7, 2], [8, 3], [9, 4], [9, 4], [10, 5], [11, 6, 1], [12, 7, 2], [12, 7, 2], [13, 8, 3], [14, 9, 4], [15, 10, 5]]

  PREFERRED_SAVES = [:fortitude, :will]
end


# add functionality to choose animal companion
