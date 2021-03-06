class ObscuringReferences
  attr_reader :data
  def initialize(data)
    @data = data
  end

  def diameters
    data.collect do |cell|
      cell[0] + (cell[1] * 2)
    end
  end
end


data = [[423,4324,],[423432,4234], [4234,1]]