class Bard < BaseClass
  FIRST_TIER_ABILITIES = [:cha, :int, :dex]
  SECOND_TIER_ABILITIES = [:con, :str, :wis]
  CLASS_SKILLS = [:appraise, :balance, :bluff, :climb, :concentration, :craft, :decipher_script, :diplomacy, :disguise, :escape_artist, :gather_information, :hide, :jump, :knowledge, :int, :listen, :move_silently, :perform, :profession, :sense_motive, :slight_of_hand, :speak_language, :spellcraft, :swim, :tumble, :use_magic_device]
  HIT_DIE = 6
  SKILL_BASE = 6
  BASE_ATTACK_BONUSES = [[0], [1], [2], [3], [3], [4], [5], [6, 1], [6, 1], [7, 2], [8, 3], [9, 4], [9, 4], [10, 5], [11, 6, 1], [12, 7, 2], [12, 7, 2], [13, 8, 3], [14, 9, 4], [15, 10, 5]]
end

#  UPDATE THE SKILLS TO HAVE ALL KNOWLEDGE CATEGORIES!!!!!

