class Wizard < BaseClass
  FIRST_TIER_ABILITIES = [:int, :con, :dex]
  SECOND_TIER_ABILITIES = [:wis, :str, :cha]

  HIT_DIE = 4
  SKILL_BASE = 2
  # TODO: add any more knowledges there might be. And check if any other classes have "all knowledges" as class skills.
  CLASS_SKILLS = [:knowledge_arcana, :concentration, :spellcraft, :decipher_script, :craft, :profession, :knowledge_history, :knowledge_nobility, :knowledge_planes, :knowledge_nature, :knowledge_religion]

  MUST_HAVE_SKILLS = [:knowledge_arcana, :concentration]
  NICE_TO_HAVE_SKILLS = [:spellcraft, :decipher_script]

  BASE_ATTACK_BONUSES = [[0], [1], [1], [2], [2], [3], [3], [4], [4], [5], [5], [6, 1], [6, 1], [7, 2], [7,2], [8, 3], [8, 3], [9, 4], [9, 4], [10, 5]]

  PREFERRED_SAVES = [:will]
end
