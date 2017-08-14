class CLI

  def begin
    welcome
    call
  end

  def welcome
    puts ""
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

    england = League.new("The English Premier League (EPL)", Scraper.premier_scraper)
    spain = League.new("The Spanish La Liga Santander (La Liga)", Scraper.la_liga_scraper)
    italy = League.new("The Italian Serie A TIM (Serie A)", Scraper.serie_a_scraper)

    input = nil

    puts " - - - - - - - - - - - - - - - - - "
    puts "*                                  *"
    puts "*    Let's Watch Some Footy!!!     *"
    puts "*                                  *"
    puts " - - - - - - - - - - - - - - - - - "
    puts ""
    puts ""

  end

  def call
   while @input != "exit"
     puts ""
     puts "Enter the number of the league whose upcoming fixtures you would like to see:"
     puts ""
     League.print_all
     puts ""
     puts "'list' -  View the list of leagues you can retrieve fixture information from."
     puts "'exit' -  The referee will blow the fulltime whistle."
     puts ""


     @input = gets.strip

     if @input.downcase == "exit"
       exit
       break
     elsif @input.to_i.between?(1, League.all.count)
       select_fixture_by_league
     else
       "That is not a valid option. Please try again"
       call
     end

   end
 end

 def select_fixture_by_league
    selected_league = League.find(@input)
    puts ""
    puts "#{selected_league.name}:"
    selected_league.fixtures.each_with_index do |fixture|
      puts "#{fixture.all_info}"

      #puts "#{fixture.home_team} #{fixture.away_team} #{fixture.date} #{fixture.time}"
      puts ""
    end

    #puts ""
    #puts "Enter the number of the fixture you would like to get more info about:"
    #puts "Type 'back' to return to the main menu, or 'exit' to quit:"

    #@fixture_number = gets.strip

    #if @fixture_number.downcase == "back"
      #call
    #elsif @fixture_number.downcase == "exit"
      #@input = "exit"
      #exit
    #elsif @fixture_number.to_i < 1 || @fixture_number.to_i > selected_league.fixtures.count
      #puts "That is not a valid input. Please try again."
      #select_fixture_by_league
    #else
      #fixture = selected_league.find_fixture(@fixture_number)

      #puts "#{fixture.home_team} vs #{fixture.away_team} (#{fixture.date}, #{fixture.time}), #{fixture.location}}"
      #puts "Below is the link for information about the line-ups, statistics, and viewing options"
      #puts "#{fixture.fixture_link}"
    #end

    #if @input == "exit"
      #call
    #else
      #puts ""
      #puts "Would you like to see the list of fixtures from #{selected_league.name} again? (y/n)"
      #@input5 = gets.strip.downcase
    #end

    #if @prompted_input == "y"
      #select_fixture_by_league
    #elsif @prompted_input == "exit"
      #@input = "exit"
      #exit
    #else
      #call
    #end
  end

  def exit
    puts ""
    puts "That's the fulltime whistle!"
  end

end
