class Calculator
  def self.add(*array)
    array.inject(0, :+)
  end
end
