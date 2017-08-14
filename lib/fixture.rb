class Fixture
  #attr_accessor :home_team, :away_team, :date, :time, :location, :league
  attr_accessor :all_info, :date, :league
  @@all = []

  def initialize(league, attributes)
    attributes.each do |attribute_name, attribute_value|
     self.send("#{attribute_name}=", attribute_value)
   end

   @league = league

   @@all << self

  end

  def self.all
    @@all
  end

  #def self.print_all
    #all.each_with_index do |show, index|
      #puts "#{index+1}.     #{show.team_name teams}"
    #end
  #end


end
