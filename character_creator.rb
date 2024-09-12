require_relative 'classes/base_class'
require_relative 'classes/paladin'
require_relative 'classes/ranger'
require_relative 'classes/sorceror'
require_relative 'classes/wizard'
require_relative 'classes/bard'
require_relative 'classes/barbarian'
require_relative 'classes/cleric'
require_relative 'classes/monk'
require_relative 'classes/fighter'
require_relative 'classes/rogue'
require_relative 'classes/druid'

class CharacterCreator

  CLASS_NAMES = [Ranger, Cleric, Bard, Monk, Fighter, Barbarian, Rogue, Paladin, Sorceror, Druid, Wizard]
  RACES = ["gnome", "human", "elf", "dwarf", "half-elf", "half-orc", "halfling"]

  attr_reader :klass, :level, :race

  def initialize(args)
    @klass = args[:klass]
    @level = args[:level]
    @race = args[:race]
  end

  def create_character
    klass.new(race, level)
  end

  def klass
    @klass ||= CLASS_NAMES.sample
  end

  def race
    @race ||= RACES.sample
  end
end

