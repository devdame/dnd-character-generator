require_relative "creator_view"
require_relative "party"
require_relative "character_creator"
require "pry"
require "pry-nav"

class CreatorController
  attr_reader :party, :view
  attr_accessor :input, :character_info, :last_character_info

  def initialize
    @party = Party.new
    @view = CreatorView.new(party)
    @input = nil
    @character_info = {}
    @last_character_info = {}
  end

  def run!
    view.greet_user
    view.display_options
    feedback_loop
  end

  def feedback_loop
    return if input == "quit" || input == "exit"
    view.prompt_for_command
    view.ask_for_input
    get_input
    parse_input
    feedback_loop
  end

  def parse_input
    case input
    when "help", "menu"
      view.display_options
    when "new"
      new_character_process
    when "again"
      repeat_character_process
    when "list all"
      view.list_all_characters
    when "quit", "exit"
    else
      view.invalid_input
    end
  end

  def new_character_process
    set_level
    set_race
    set_class
    make_character
    save_and_clear_character_info
    view.show_new_character
  end

  def repeat_character_process
    if last_character_info.any?
      self.character_info = last_character_info
      make_character
      save_and_clear_character_info
      view.show_new_character
    else
      view.invalid_repeat
    end
  end

  def set_level
    view.ask_for_level
    view.ask_for_input
    character_info[:level] = gets.chomp.to_i
    set_level unless character_info[:level] > 0
    if character_info[:level] > 20
      view.level_limitations
      set_level
    end
  end

  def set_race
    view.ask_to_choose_race
    view.ask_for_input
    get_input
    case input
    when "yes", "y"
      view.ask_for_race
      view.ask_for_input
      character_info[:race] = gets.chomp.downcase
      unless valid_race
        view.invalid_input
        set_race
      end
    when "no", "n"
      character_info[:race] = nil
    else
      view.invalid_input
      set_race
    end
  end

  def set_class
    view.ask_to_choose_class
    view.ask_for_input
    get_input
    case input
    when "yes", "y"
      view.ask_for_class
      view.ask_for_input
      character_info[:klass] = gets.chomp.downcase
      if valid_class
        character_info[:klass] = class_hash[character_info[:klass]]
      else
        view.invalid_input
        set_class
      end
    when "no", "n"
      character_info[:klass] = nil
    else
      view.invalid_input
      set_class
    end
  end

  def valid_race
    ["human", "gnome", "halfling", "elf", "half-elf", "half-orc", "dwarf"].include?(character_info[:race])
  end

  def valid_class
    ["barbarian","bard","cleric","druid","fighter","monk","paladin","ranger","rogue","sorcerer","wizard"].include?(character_info[:klass])
  end

  def class_hash
    {
      "barbarian" => Barbarian,
      "bard" => Bard,
      "cleric" => Cleric,
      "druid" => Druid,
      "fighter" => Fighter,
      "monk" => Monk,
      "paladin" => Paladin,
      "ranger" => Ranger,
      "rogue" => Rogue,
      "sorcerer" => Sorcerer,
      "wizard" => Wizard,
    }
  end

  def make_character
    new_character = CharacterCreator.new(character_info).create_character
    party.add_member(new_character)
  end

  def save_and_clear_character_info
    self.last_character_info = character_info
    self.character_info = {}
  end

  def get_input
    self.input = gets.chomp.downcase
  end
end
