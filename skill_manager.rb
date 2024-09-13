class SkillManager
  attr_reader :character, :starting_skill_points
  attr_accessor :available_skill_points

  ALL_SKILLS = {
    appraise: :int,
    balance: :dex,
    bluff: :cha,
    climb: :str,
    concentration: :con,
    craft: :int,
    decipher_script: :int,
    diplomacy: :cha,
    disable_device: :int,
    disguise: :cha,
    escape_artist: :dex,
    forgery: :int,
    gather_information: :cha,
    handle_animal: :cha,
    heal: :wis,
    hide: :dex,
    intimidate: :cha, # ???????????????
    jump: :str,
    knowledge_arcana: :int,
    knowledge_religion: :int,
    knowledge_history: :int,
    knowledge_planes: :int,
    knowledge_local: :int,
    knowledge_nature: :int,
    knowledge_geography: :int,
    knowledge_nobility: :int,
    listen: :wis,
    move_silently: :dex,
    open_lock: :dex,
    perform: :cha,
    profession: :wis,
    ride: :dex,
    search: :int,
    sense_motive: :wis,
    sleight_of_hand: :dex,
    speak_language: :int, # should this be a thing?
    spellcraft: :int,
    spot: :wis,
    survival: :wis,
    swim: :str,
    tumble: :dex,
    use_magic_device: :cha,
    use_rope: :dex, # why isn't this on the character sheet i'm using as a reference?
  }

  def initialize(character)
    @character = character
    @skill_ranks = ALL_SKILLS.keys.product([0]).to_h
    @starting_skill_points = calculate_skill_points
    @available_skill_points = starting_skill_points
  end

  def assign_skills!
    # TODO: add configuration class that lets you disable skills
    # TODO: make special case for intimidate where whichever is higher between cha or str is used as the modifier
  end

  def calculate_skill_points
    (character.class::SKILL_BASE + character.ability_mods[:int]) * (3 + character.level)
  end
end
