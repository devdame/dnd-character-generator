class Barbarian < BaseClass
  FIRST_TIER_ABILITIES = [:str, :con, :dex]
  SECOND_TIER_ABILITIES = [:int, :wis, :cha]
  CLASS_SKILLS = [:climb, :craft, :handle_animal, :intimidate, :jump, :listen, :ride, :survival, :swim]
  HIT_DIE = 12
  SKILL_BASE = 4
end
