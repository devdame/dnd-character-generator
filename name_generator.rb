class NameGenerator
  PREFIXES = ["Dr.", "Little Miss", "Little Mister", "Professor", "The Honourable", "Sir", "Lady", "Their Highness", "The Right Honourable", "Viceroy", "Everyone's favorite", "Captain", "Mrs.", "Their Holiness", "The Dreaded", "The Unspeakable", "The Unsinkable", "TV's"]
  SUFFIXES = [" Jr.", " Sr.", " III", ", Esq.", ", 13th of their name", ", Bringer of Despair"]

  FIRST_NAMES = ["Marigold", "Penelope", "Franklin", "Root-a-toot", "Barglor", "Frimbleshanks", "Ploosh", "Sharks", "Biscuit", "Chrysanthemum", "Borboro", "Nimbies", "Xarlax", "Wawa", "Harold", "Meeblor", "Willoween", "Baguette", "Hallifer", "Elbows", "Macaroni", "Margaret", "Baby", "Greg", "Tiffany", "Angoro", "Monty", "Ramboli", "Lester", "Hunk", "Drametha", "Ladybella", "Kront", "Deluge", "Luff", "Whipcrack", "Itchy", "Dufraine", "Frasier", "Hempsack", "Weeknight", "Telmarim", "Zips", "Dot", "Pickletongue", "Loop", "Dizzy", "Bronwyn", "Ort", "Pally Anne", "Terviell", "Lampwick", "Martin", "Updogg", "Bazillions", "Slitherina", "Barkbrains", "Whispers", "Smidge", "Zimzam", "Sally", "Ginger", "Pluto", "Wiggles", "Carolina", "Jason", "Toodlewhip", "Zogwomp", "Tater Tot", "Hastor", "Malaxo", "Valkyria", "Hildegard", "Gwyndel", "Fast Fingers", "Blobs", "Toledo", "Barbara", "Jackson", "Socks", "Saxa", "Louie", "Tammerlane", "Gooey", "Lemuel", "Maxamillian", "Rocko", "Hamburger", "Cattywampus", "Ham", "Ron", "Gerald", "Deborah", "Vortager", "Anaximus", "Riptide", "Lugo", "Jam-Hands", "Xyrxonius", "Abernathy", "Bladely", "Chris", "Mortadella", "Pepperoni", "Jaxxo", "Belladonna", "Ol'Rottin", "Salmonella", "Jennifer", "Rosie", "Torgon", "Maxima", "Italia", "Tuesday", "Kiwi", "Wheezie", "Zorba", "Teddy", "Moxie", "Rudolfo", "Tangerine", "Limahil", "Spritz", "Daxi", "Skor Skor", "Mother", "Tordette", "Angelina", "Ramekin", "Glider", "Sprout", "No-Hands", "Kansas"]

  LAST_NAMES = ["Binglebuns", "Van Poots", "of the Sixth Mountain", "O'Weefs", "La Croix", "the Weird", "Gargleblaster", "Tabbytoes", "Hamshanks", "Quarfarnian", "the Kind", "the Pungeant", "from HR", "After Dark", "Wawaweewa", "Riverfriend", "Sandy", "Cheekbottom", "Footcarve", "the Moist", "the Ordained", "of Puddles", "from Over There", "the Mauve", "Smackroot", "Turdblossom", "Killywhistle", "Wellywort", "Apples-Dumpling", "Slaghoople", "Horks", "Onassis", "Badfires", "with the Hair", "the Screammonger", "the Dreammonger", "Schmabitha", "Finger-Foods", "of the Many Faces", "Turkey-Holliday", "Starbrite", "Hogmember", "Blastywasts", "Chumms", "Blammo", "Smash-bash", "Coldfish", "Le Freak", "Bumpling", "Manapanohan", "Petalopoulis", "Sinclair", "Carglewarp", "Voidheart", "the Scar Maker", "Peaseblossom", "Commander", "Gunderson", "Lamplost", "Lewdabaker", "Troll-talker", "Bludmacher", "Dramboline", "Trashpile", "Dern", "de Miel", "Drambooie", "Whistlepig", "Slicer", "the Shredder", "O'Hallohan", "the Uncouth", "the Soft", "Gardenchild", "Cheesecakes", "Glampton", "Arabesque", "Lindasdottir", "Tostitos", "Jackson", "Weaselstrangler", "Kickflips", "Hollywood", "Z'or", "Matango", "Veerhoven", "von Turbo", "Vandersnatch", "Horsefriend", "from Up North", "of Darkness"]

  def self.generate_name
    base_name = "#{FIRST_NAMES.sample} #{LAST_NAMES.sample}"
    if rand(1..8) == 1
      if rand(1..4) == 1 && !base_name.match(/ the /)
        base_name = base_name + SUFFIXES.sample
      else
        base_name = "#{PREFIXES.sample} #{base_name}"
      end
    end

    base_name
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
