class Parcel
  def initialize(weight_cost=0.07, size_cost=200, miles_cost=0.02)
    @weight_cost = weight_cost
    @size_cost = size_cost
    @miles_cost = miles_cost
  end

  def total_weight_cost(weight)
    @weight_cost * weight
  end

  def total_size(height, length, width)
    height * length * width
  end

  def total_size_cost(size)
    size / @size_cost
  end

  def total_mile_cost(miles)
    @miles_cost * miles
  end

  def total(weight_cost, size_cost, miles_cost)
    weight_cost + size_cost + miles_cost
  end
end
