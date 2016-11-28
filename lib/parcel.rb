class Parcel
  def initialize(wieght, width, hieght, miles)
    @wieght = wieght
    @width =  width
    @hieght = hieght
    @miles = miles
  end

  def wieght_cost
    @wieght * 2
  end
end
