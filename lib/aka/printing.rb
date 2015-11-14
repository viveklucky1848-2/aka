module Aka
  def self.exist_statement(statement)
    puts ""
    puts "Exists: ".green + statement
    puts ""
  end

  def self.print_all_helpful_statement
    puts "A total of #{count()} aliases, #{count_groups} groups, #{count_export} exports and #{count_function} functions from #{readYML("#{CONFIG_PATH}")["dotfile"]}"
    puts "\nUse 'aka -h' to see all the useful commands.\n\n"
  end

  def self.error_statement(statement)
    puts ""
    puts "Error: ".red + statement
    puts ""
  end

  def self.print_helpful_statement total_aliases
    puts "\nA total of  #{total_aliases} aliases in this project #{Dir.pwd}"
    puts "\nUse 'aka -h' to see all the useful commands."
  end

  def self.print_title(with_these)
    puts ""
    puts "*** #{with_these} ***"
    puts ""
  end

  def self.edit_statement(statement)
    puts ""
    puts "Edited:  ".yellow + statement
    puts ""
  end

  def self.create_statement(statement)
    puts "Created: ".green +  statement
  end
end
