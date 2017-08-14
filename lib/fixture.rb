class Fixture
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

end
