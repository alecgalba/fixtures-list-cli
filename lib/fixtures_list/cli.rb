class FixturesList::CLI

  def call
    welcome
    list_leagues
    menu
    quit
  end

  def welcome
    puts "Retrieving the English Premier League, Spanish La Liga, and Italian Serie A fixture schedules for you now."
    puts ""
    puts "..."
    puts "
                ▓▓▓▓▓▓▓▓▓▓▓▓████████████
            ▓▓▓▓▓▓▓▓███████▒▒▒▒▒▒▒▒▒███
            ▓▓▓▓▓█████████▒▒▒▒▒▒▒▒▒▒▒▒████
            ▓▓▓▓██▒███▒▒▒▒██▒▒▒▒▒▒▒▒▒█▒▒▒██
            ▓▓▓█▒▒▒█▒▒▒▒▒▒▒▒█▒▒▒▒▒▒▒█▒▒▒▒▒▒██
            ▓▓█▒▒▒█▒▒▒▒▒▒▒▒▒▒████████▒▒▒▒▒▒▒██
            ▓█▒▒▒██▒▒▒▒▒▒▒▒▒█████████▒▒▒▒▒▒▒▒█
            ██▒▒▒█▒▒▒▒▒▒▒▒▒▒██████████▒▒▒▒▒▒▒▒█
            █▒▒▒██▒▒▒▒▒▒▒▒████████████▒▒▒▒▒▒▒▒█
            █▒▒█████▒▒▒███▒▒▒███████▒▒████▒▒▒██
            ███████████▒▒▒▒▒▒▒▒███▒▒▒▒▒▒▒▒█████
            █▒███████▒▒▒▒▒▒▒▒▒▒▒█▒▒▒▒▒▒▒▒▒▒████
            █▒███████▒▒▒▒▒▒▒▒▒▒▒█▒▒▒▒▒▒▒▒▒▒████
            ▓█▒██████▒▒▒▒▒▒▒▒▒▒██▒▒▒▒▒▒▒▒▒▒███
            ▓▓█▒██▒▒██▒▒▒▒▒▒▒▒▒█▒▒▒▒▒▒▒▒▒██▒██
            ▓▓▓██▒▒▒▒▒███▒▒▒▒█████▒▒▒▒███▒▒▒█
            ▓▓▓▓██▒▒▒▒▒▒███████████████▒▒▒██
            ▓▓▓▓▓███▒▒▒▒▒▒██████████▒▒▒▒██
            ▓▓▓▓▓▓▓████▒▒▒█████████▒▒███
            ▓▓▓▓▓▓▓▓▓▓█████▒▒▒▒▒▒████ "
  end

  def list_leagues
    sleep(10)
    puts "
    1. Premier League fixtures
    2. La Liga fixtures
    3. Serie A fixtures"
  end

  def menu
    input = nil
    while input != "exit"
      puts ""
      puts "Enter the number of the league to see the fixtures list. Enter 'list' to see the available leagues again. Enter 'exit' to blow the final whistle:"
      puts ""
      input = gets.strip.downcase
      case input
      when "1"
        puts "Premier League fixtures"
      when "2"
        puts "La Liga fixtures"
      when "3"
        puts "Serie A fixtures"
      when "list"
        list_leagues
      else
        puts "Not a valid option. Enter list to see your choices or exit to blow the whistle:"
        puts ""
      end
    end
  end

  def quit
    puts "The referee blows the final whistle"
  end

end
