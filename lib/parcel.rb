class Parcel
  def initialize(wieght, width, hieght, length, miles)
    @wieght = wieght
    @width =  width
    @hieght = hieght
    @length = length
    @miles = miles
  end

  def wieght_cost
    @wieght * 2
  end

  def size_cost
     @width * @hieght * @length /100
  end

  def mile_cost
    @miles * 0.5 
  end
end
