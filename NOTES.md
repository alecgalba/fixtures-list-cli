How to Build a CLI Gem

[ X ] Plan your gem, imagine your interface
[ X ] Start with the project structure - google
[ X ] Start with the entry point - the file run
[ ] force that to build the CLI interface
[ ] stub out the interface
[ ] start making things real
[ ] discover objects.
[ ] program

-- What do I want this program to show?

  => A CLI that shows the big 3 season league fixture list

  => Premier League Schedule - England (league.rb)
(url = "http://www.foxsports.com/soccer/schedule?competition=1&season=2017&round=1&week=0&group=0&sequence=1")
    => Teams(league.rb)
    => Fixture(league.rb)
      => Team 1 (Home) vs Team 2 (Away) (fixture.rb)
      => Date (fixture.rb)
      => Location (fixture.rb)

  => La Liga - Spain (league.rb)
(url = "http://www.foxsports.com/soccer/schedule?competition=2&season=2017&round=1&week=0&group=0&sequence=1")
    =>Teams(league.rb)
    => Fixture(league.rb)
      => Team 1 (Home) vs Team 2 (Away) (fixture.rb)
      => Date (fixture.rb)
      => Location (fixture.rb)

  => Seria A -  Italy (league.rb)
(url = "http://www.foxsports.com/soccer/schedule?competition=3&season=2017&round=1&week=0&group=0&sequence=1")
    => Teams (league.rb)
    => Fixture (league.rb)
      => Team 1 (Home) vs Team 2 (Away) (fixture.rb)
      => Date (fixture.rb)
      => Location (fixture.rb)


Lib Folder
  => (folder) fixtures_list
    => version.rb
      -- module FixturesList
          VERSION = "0.1.0"
         end

  => command_line.rb

  => scraper.rb

  => fixture.rb

  => league.rb

  => fixtures_list.rb
    -- require 'open-uri'
       require 'pry'
       require 'nokogiri'
       require_relative './fixtures_list/version.rb'
       require_relative './command_line.rb'
       require_relative './fixture.rb'
       require_relative './scraper.rb'
       require_relative './league.rb'


Bin Folder
  => console
    --  #!/usr/bin/env ruby
        #require_relative "../lib/command_line.rb"
        require "bundler/setup"
        require "fixtures_list"

        # You can add fixtures and/or initialization code here to make experimenting
        # with your gem easier. You can also use a different console, if you like.

        # (If you use this, don't forget to add pry to your Gemfile!)
        # require "pry"
        # Pry.start

        require "irb"
        IRB.start

  => fixtures_list
    -- require_relative '../lib/museum_shows.rb'

       CommandLine.new.welcome

  => setup
    -- set -euo pipefail
       IFS=$'\n\t'
       set -vx

       bundle install

       # Do any other automated setup that you need to do here
