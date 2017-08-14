class League
  attr_accessor :name, :fixtures
  @@all = []

  def initialize(name, fixtures_array)
    @name = name

    @fixtures = fixtures_array.collect do |fixture_attributes|
     Fixture.new(self, fixture_attributes)
    end

    @@all << self
  end

  def self.find(id)
  @@all[id.to_i-1]
  end

  def find_fixture(id)
    self.fixtures[id.to_i-1]
  end

  def self.all
    @@all
  end

  def self.print_all
   all.each_with_index do |league, index|
     puts "#{index+1}. #{league.name}"
   end
 end

end
