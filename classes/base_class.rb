class BaseClass

  attr_accessor :ability_scores, :base_attack_bonuses
  attr_reader :race, :level, :hit_points

  UNIVERSAL_FIRST_TIER_SKILLS = [:spot, :move_silently]
  UNIVERSAL_SECOND_TIER_SKILLS = [:use_rope]

  def initialize(race, level)
    @race = race
    @level = level
    @ability_scores = {}
    @base_attack_bonuses = []
    set_up_character
  end

  def set_up_character
    assign_ability_scores
    assign_feats
    choose_skills
    set_hit_points
    set_base_attack_bonuses
    # buy_equipment
    # set_saves
  end

  def to_s
<<-STRING
\033[1;32mLevel:\033[0m #{level}
\033[1;32mClass:\033[0m #{self.class}
\033[1;32mRace:\033[0m #{race}
\033[1;32mAbility Scores:\033[0m
#{list_ability_scores}\033[1;32mHit Points:\033[0m #{hit_points}
\033[1;32mBase Attack Bonuses:\033[0m #{base_attack_bonuses.join(" / ")}
STRING
  end

  private

  def list_ability_scores
<<-STRING
  \033[1;35mSTR:\033[0m #{ability_scores[:str]}
  \033[1;35mCON:\033[0m #{ability_scores[:con]}
  \033[1;35mDEX:\033[0m #{ability_scores[:dex]}
  \033[1;35mINT:\033[0m #{ability_scores[:int]}
  \033[1;35mWIS:\033[0m #{ability_scores[:wis]}
  \033[1;35mCHA:\033[0m #{ability_scores[:cha]}
STRING
  end

  def raw_ability_scores
    @raw_ability_scores ||= begin
      scores ||= Array.new(6) do
        Array.new(4) { rand(1..6) }.sort.reverse.take(3).inject(:+)
      end
      if scores.select {|score| score < 10}.length > 1
        raw_ability_scores
      else
        scores.sort.reverse
      end
    end
  end

  def assign_ability_scores
    self.class::FIRST_TIER_ABILITIES.each do |score|
      self.ability_scores[score] = raw_ability_scores.shift
    end
    self.class::SECOND_TIER_ABILITIES.shuffle.each do |score|
      self.ability_scores[score] = raw_ability_scores.shift
    end
    adjust_for_race
    adjust_for_level
  end

  def adjust_for_race
    case race
    when "halfling"
      self.ability_scores[:dex] += 2
      self.ability_scores[:str] -= 2
    when "elf"
      self.ability_scores[:dex] += 2
      self.ability_scores[:con] -= 2
    when "gnome"
      self.ability_scores[:con] += 2
      self.ability_scores[:str] -= 2
    when "half-orc"
      self.ability_scores[:str] += 2
      self.ability_scores[:int] -= 2
      self.ability_scores[:cha] -= 2
    when "dwarf"
      self.ability_scores[:con] += 2
      self.ability_scores[:cha] -= 2
    end
  end

  def adjust_for_level
    sorted_ability_scores = ability_scores.sort_by {|k, v| v}
    level_adjustments = level/4

    # all adjustments for level will add to the highest ability score except for the last one which is a special condition.

    (level_adjustments - 1).times { increase_score(sorted_ability_scores.last.first) }

    bump_score_that_matters(sorted_ability_scores)
  end

  def bump_score_that_matters(sorted_ability_scores)
    # if the last adjustment won't bump up the modifier for the highest ability score, add it to the next highest ability score whose modifier WILL get bumped up from the ability score increase.
    # modifiers bump up when the ability score hits the next even number
    # if it can't bump any modifiers, just add it to the highest ability score.

    odd_scores = sorted_ability_scores.select{|pair| pair[1] % 2 == 1}
    score_to_increase = odd_scores.any? ? odd_scores.last.first : sorted_ability_scores.last.first
    increase_score(score_to_increase)
  end

  def increase_score(score_name)
    ability_scores[score_name] += 1
  end

  def number_of_feats
    feats = 1
    feats += 1 if race == "human"
    feats += (level-1) / 3
  end

  def assign_feats
    # First, figure out how many feats the character is getting
    # Then, establish what feats the character can take based off of prerequisites
  end

  def set_hit_points
    points = 0
    level.times do
      points += (rand(2..self.class::HIT_DIE) + ability_mods[:con])
    end
    @hit_points = points
  end

  def ability_mods
    @ability_mods ||= ability_scores.each_pair.each_with_object({}) do |(ability, score), mod_hash|
      relative_score = score - 10
      mod_hash[ability] = relative_score / 2
    end
  end

  def choose_skills
    # figure out which skills are important for the character
    # also figure out a ratio in which to assign those skills
    # but you also want to randomize it a bit.
    # maybe break the skills into tiers, assign a number of skill points to each tier, then randomly divvy up and assign the skill points within each tier?
    # don't forget base skills that apply to all classes
  end

  def number_of_skill_points
    (self.class::SKILL_BASE + ability_mods[:int]) * (3 + level)
  end

  def set_base_attack_bonuses
    self.base_attack_bonuses = self.class::BASE_ATTACK_BONUSES[level-1]
  end
end
