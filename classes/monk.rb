class Monk < BaseClass
  FIRST_TIER_ABILITIES = [:str, :dex, :wis]
  SECOND_TIER_ABILITIES = [:con, :cha, :int]
  CLASS_SKILLS = [:Balance, :climb, :concentration, :craft, :diplomacy, :escape_artist, :hide, :jump, :knowledge_arcana, :knowledge_religion, :listen, :move_silently, :perform, :profession, :sense_motive, :spot, :swim, :Tumble]
  HIT_DIE = 8
  SKILL_BASE = 4
end
