class Cleric < BaseClass
  FIRST_TIER_ABILITIES = [:wis, :con, :int]
  SECOND_TIER_ABILITIES = [:dex, :str, :cha]
  CLASS_SKILLS = [:concentration, :craft, :diplomacy, :heal, :knowledge_arcana, :knowledge_history, :knowledge_religion, :knowledge_planes, :profession, :spellcraft]
  HIT_DIE = 8
  SKILL_BASE = 2

  def modify_class_skills
    # for domain.  figure out a good way to do this!
  end
end
