class CreatorView
  attr_reader :party

  def initialize(party)
    @party = party
  end

  def greet_user
    puts "\033[1;36mWELCOME TO THE 3.5E CHARACTER CREATOR.\033[0m"
  end

  def display_options
    puts <<-STRING
To display this menu, enter "\033[1;31mmenu\033[0m" or "\033[1;31mhelp\033[0m".
To quit, enter "\033[1;31mquit\033[0m" or "\033[1;31mexit\033[0m".
To generate a new character, enter "\033[1;31mnew\033[0m".
To repeat the last character request you made, enter "\033[1;31magain\033[0m".
To list all of the characters you have made so far, enter "\033[1;31mlist all\033[0m"
STRING
  end

  def prompt_for_command
    puts "What would you like to do next?"
  end

  def ask_for_input
    print "\033[1;31m>>> \033[0m"
  end

  def ask_for_level
    puts "What level character would you like to make?"
  end

  def ask_to_choose_race
    puts "Would you like to specify the race?  Enter 'yes'/'y'/'no'/'n'."
  end

  def ask_to_choose_class
    puts "Would you like to specify the class?  Enter 'yes'/'y'/'no'/'n'."
  end

  def ask_for_race
    puts <<-STRING
Please enter the race name.  Your choices are:
- human
- halfling
- gnome
- dwarf
- elf
- half-elf
- half-orc
STRING
  end

  def ask_for_class
    puts <<-STRING
Please enter the class name.  Your choices are:
- barbarian
- bard
- cleric
- druid
- fighter
- monk
- paladin
- ranger
- rogue
- sorceror
- wizard
STRING
  end

  def list_all_characters
    party.members.any? ? party.list_members : no_characters_yet
  end

  def no_characters_yet
    puts "You haven't made any characters yet!"
  end

  def show_new_character
    puts "\033[1;36mYOUR NEW CHARACTER:\033[0m"
    puts party.members.last
  end

  def invalid_input
    puts "Whoops, I couldn't understand you."
  end

  def invalid_repeat
    puts "You haven't made a character yet, so I don't have anything to repeat!  Make one and come back to me."
  end

  def level_limitations
    puts "We currently don't have support for epic level characters.  Please choose a level between one and twenty."
  end
end
