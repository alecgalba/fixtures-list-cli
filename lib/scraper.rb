class Scraper

  def self.premier_scraper
    premier = Nokogiri::HTML(open("http://www.foxsports.com/soccer/schedule?competition=1"))
    premier.css("table.wisbb_scheduleTable").collect do |fixture|
      fixture_info = {
      #binding.pry
      :all_info => fixture.css("tbody").text.gsub(/\s+/, " ").strip
      #:home_team => fixture.css("div.wisbb_team wisbb_reversed wisbb_firstTeam").text.strip,
      #:away_team => fixture.css("div.wisbb_team wisbb_secondTeam").text.strip,
      #:date => fixture.css("th").text.strip,
      #:time => fixture.css("a").text.strip,
      #:location => fixture.css("div.wisbb_location").text.strip
    }

      fixture_info
    end
  end

  def self.la_liga_scraper
    la_liga = Nokogiri::HTML(open("http://www.foxsports.com/soccer/schedule?competition=2"))
    la_liga.css("table.wisbb_scheduleTable").collect do |fixture|
      fixture_info = {
        #binding.pry
        :all_info => fixture.css("tbody").text.gsub(/\s+/, " ").strip,
        #:home_team => fixture.css("div.wisbb_team wisbb_reversed wisbb_firstTeam").text.gsub(/\s+/, " ").strip,
        #:away_team => fixture.css("div.wisbb_team wisbb_secondTeam").text.gsub(/\s+/, " ").strip,
        #:date => fixture.css("th").text.gsub(/\s+/, " ").strip,
        #:time => fixture.css("a").text.gsub(/\s+/, " ").strip,
        #:location => fixture.css("div.wisbb_location").text.gsub(/\s+/, " ").strip,
      }

      fixture_info
    end
  end

  def self.serie_a_scraper
    serie_a = Nokogiri::HTML(open("http://www.foxsports.com/soccer/schedule?competition=3"))
    serie_a.css("table.wisbb_scheduleTable").collect do |fixture|
      fixture_info = {
        #binding.pry
        :all_info => fixture.css("tbody").text.gsub(/\s+/, " ").strip
        #:home_team => fixture.css("div.wisbb_team wisbb_reversed wisbb_firstTeam").text.strip
        #:away_team => fixture.css("div.wisbb_team wisbb_secondTeam").text.strip
        #:date => fixture.css("th").text.strip
        #:time => fixture.css("a").text.strip
        #:location => fixture.css("div.wisbb_location")text.strip
      }

      fixture_info
    end
  end

end
