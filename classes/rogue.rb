class Rogue < BaseClass
  FIRST_TIER_ABILITIES = [:int, :dex, :cha]
  SECOND_TIER_ABILITIES = [:wis, :str, :con]
  CLASS_SKILLS = [:appraise, :balance, :bluff, :climb , :craft, :decipher_script, :diplomacy, :disable_device, :disguise, :escape_artist, :forgery, :gather_information, :hide, :intimidate, :jump, :knowledge_local, :listen, :move_silently, :open_lock, :perform, :profession, :search, :sense_motive, :sleight_of_hand, :spot, :swim, :tumble, :use_magic_device, :use_rope]
  HIT_DIE = 6
  SKILL_BASE = 8
end
