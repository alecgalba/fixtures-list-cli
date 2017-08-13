class FixturesList::CLI

  def call
    list
    menu
    quit
  end

  def list
    puts "
    1. Premier League
    2. La Liga
    3. Serie A"
  end

  def menu
    input = nil
    while input != "exit"
      puts ""
      puts "Enter the number of the league to see the fixtures list. Enter 'exit' to blow the final whistle"
      input = gets.strip.downcase
      case input
      when "1"
        puts "Premier League fixtures"
      when "2"
        puts "La Liga fixtures"
      when "3"
        puts "Serie A fixtures"
      end
    end
  end

  def quit
    puts "The referee blows the final whistle"
  end

end
