class Rogue < BaseClass
  FIRST_TIER_ABILITIES = [:int, :dex, :cha]
  SECOND_TIER_ABILITIES = [:wis, :str, :con]

  HIT_DIE = 6
  SKILL_BASE = 8
  CLASS_SKILLS = [:appraise, :balance, :bluff, :climb , :craft, :decipher_script, :diplomacy, :disable_device, :disguise, :escape_artist, :forgery, :gather_information, :hide, :intimidate, :jump, :knowledge_local, :listen, :move_silently, :open_lock, :perform, :profession, :search, :sense_motive, :sleight_of_hand, :spot, :swim, :tumble, :use_magic_device, :use_rope]

  BASE_ATTACK_BONUSES = [[0], [1], [2], [3], [3], [4], [5], [6, 1], [6, 1], [7, 2], [8, 3], [9, 4], [9, 4], [10, 5], [11, 6, 1], [12, 7, 2], [12, 7, 2], [13, 8, 3], [14, 9, 4], [15, 10, 5]]

  PREFERRED_SAVES = [:reflex]
end
