class SkillManager
  attr_reader :character, :starting_skill_points, :max_ranks
  attr_accessor :available_skill_points, :skill_ranks

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
    @available_skill_points = calculate_skill_points
    @max_ranks = character.level + 3
  end

  def assign_skills!
    assign_must_have_skills
    puts "remaining skill points: #{available_skill_points}"
    assign_nice_to_have_skills
    # binding.pry
    puts self.inspect

    # This isn't working right yet--just saw a druid at this point with -1 available skill points. But it's a start!

    # TODO: add configuration class that lets you disable skills
    # TODO: make special case for intimidate where whichever is higher between cha or str is used as the modifier
  end

  def assign_must_have_skills
    must_haves = character.class::MUST_HAVE_SKILLS
    max_ranks.times do
      if available_skill_points > must_haves.count
        must_haves.each do |skill|
          add_ranks(skill, 1)
        end
      end
    end
  end

  def assign_nice_to_have_skills
    return unless available_skill_points > 0

    nice_to_haves = character.class::NICE_TO_HAVE_SKILLS
    max_possible_nice_to_have_ranks = nice_to_haves.count * max_ranks

    allotted_skill_points = if max_possible_nice_to_have_ranks < (available_skill_points / 2)
      max_possible_nice_to_have_ranks
    else
      rand((max_possible_nice_to_have_ranks / 2)..max_possible_nice_to_have_ranks)
    end

    until allotted_skill_points == 0
      skill = nice_to_haves.sample
      if skill_ranks[skill] < max_ranks
        add_ranks(skill, 1)
        allotted_skill_points -= 1
      end
    end
  end

  def add_ranks(skill, num)
    skill_ranks[skill] += 1
    self.available_skill_points -= 1
  end

  def calculate_skill_points
    (character.class::SKILL_BASE + character.ability_mods[:int]) * (3 + character.level)
  end
end
