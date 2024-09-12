class NameGenerator
  FIRST_NAMES = ["Marigold", "Penelope", "Franklin", "Root-a-toot", "Barglor", "Frimbleshanks", "Ploosh", "Sharks", "Biscuit", "Chrysanthemum", "Borboro", "Nimbies", "Xarlax", "Wawa", "Harold", "Meeblor", "Dr.", "Willoween", "Baguette", "Hallifer", "Elbows", "Macaroni", "Margaret", "Baby", "Little Miss", "Little Mister", "Greg", "Tiffany", "Angoro", "Monty", "Ramboli", "Lester", "Hunk", "Drametha", "Ladybella", "Kront", "Deluge", "Luff", "Whipcrack", "Itchy", "Dufraine", "Frasier", "Hempsack", "Weeknight", "Telmarim", "Zips", "Dot", "Pickletongue", "Loop", "Dizzy", "Bronwyn", "Ort", "Pally Anne", "Terviell", "Lampwick", "Martin", "Updogg"]

  LAST_NAMES = ["Binglebuns", "Van Poots", "of the Sixth Mountain", "O'Weefs", "La Croix", "the Weird", "Gargleblaster", "Tabbytoes", "Hamshanks", "Quarfarnian", "the Kind", "the Pungeant", "from HR", "After Dark", "Wawaweewa", "Riverfriend", "Sandy", "Cheekbottom", "Footcarve", "the Moist", "the Ordained", "of Puddles", "from Over There", "the Mauve", "Smackroot", "Turdblossom", "Killywhistle", "Wellywort", "Apples-Dumpling", "Slaghoople", "Horks", "Onassis", "Badfires", "with the Hair", "the Screammonger", "the Dreammonger", "Schmabitha", "Finger-Foods", "of the Many Tales", "Turkey-Holliday", "Starbrite", "Hogmember", "Blastywasts", "Chumms", "Blammo", "Smash-bash", "Coldfish"]

  def self.generate_name
    "#{FIRST_NAMES.sample} #{LAST_NAMES.sample}"
  end
end

# TODO:
# - add support for nicknames, but only if the last name is not a title.
# - add the ability for title-only characters.
#
# For example:
#
# valid: Greg "Pancakes" Binglebuns
# valid: The Sniffler
# valid: Jam-bam the Cruel
#
# invalid: The "Pancakes" Sniffler
# invalid: The Sniffler "Pancakes"
# invalid: Jam-bam "The Sniffler" the Cruel
