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
      puts ""
    end
  end

  def exit
    puts ""
    puts "That's the fulltime whistle!"
  end

end
