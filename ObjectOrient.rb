class Gear 
  attr_reader :chainring, :cog, :rim, :tire
  
  def initialize(chainring, cog, rim, tire)
    @chainring = chainring
    @cog = cog
    @rim = rim
    @tire = tire
  end

  def cog
    @cog * 100
  end

  def ratio
    chainring / cog.to_f
  end

  def gear_inches
    ratio * (rim + (tire * 2))
  end
end

gear = Gear.new(52, 11, 21, 1.5).ratio
# gear.chainring = 10
puts gear.chainring

