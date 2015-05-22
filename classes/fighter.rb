class Fighter < BaseClass
  FIRST_TIER_ABILITIES = [:str, :con, :dex]
  SECOND_TIER_ABILITIES = [:wis, :int, :cha]
  CLASS_SKILLS = [:climb, :craft, :handle_animal, :intimidate, :jump, :ride, :swim]
  HIT_DIE = 10
  SKILL_BASE = 2
end
