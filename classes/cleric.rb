class Cleric < BaseClass
  FIRST_TIER_ABILITIES = [:wis, :con, :int]
  SECOND_TIER_ABILITIES = [:dex, :str, :cha]

  HIT_DIE = 8
  SKILL_BASE = 2
  CLASS_SKILLS = [:concentration, :craft, :diplomacy, :heal, :knowledge_arcana, :knowledge_history, :knowledge_religion, :knowledge_planes, :profession, :spellcraft]

  BASE_ATTACK_BONUSES = [[0], [1], [2], [3], [3], [4], [5], [6, 1], [6, 1], [7, 2], [8, 3], [9, 4], [9, 4], [10, 5], [11, 6, 1], [12, 7, 2], [12, 7, 2], [13, 8, 3], [14, 9, 4], [15, 10, 5]]

  PREFERRED_SAVES = [:fortitude, :will]

  def modify_class_skills
    # for domain.  figure out a good way to do this!
  end
end
