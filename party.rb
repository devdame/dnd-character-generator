class Party
  attr_accessor :members

  def initialize
    @members = []
  end

  def add_member(member)
    self.members << member
  end

  def list_members
    puts "\033[1;36mYOUR CHARACTERS:\033[0m"
    members.each_with_index do |member, index|
      puts "#{index + 1}.  #{member.to_s}\n"
    end
  end
end
