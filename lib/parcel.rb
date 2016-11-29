class Parcel
  def initialize(weight_cost=0.07, size_cost=200, miles_cost=0.02, gift_wrap_cost=0.8, shipping_options_cost=0.3)
    @weight_cost = weight_cost
    @size_cost = size_cost
    @miles_cost = miles_cost
    @gift_wrap = gift_wrap_cost
    @shipping_options = shipping_options_cost
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

  def shipping_options(air)
    air * @shipping_options
  end

  def wrapping_option(gift)
    gift * @gift_wrap
  end

  def total(weight_cost, size_cost, miles_cost)
    weight_cost + size_cost + miles_cost
  end
end
