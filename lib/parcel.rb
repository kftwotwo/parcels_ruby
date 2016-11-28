class Parcel
  def initialize(wieght, width, height, length, miles)
    @wieght = wieght
    @width =  width
    @height = height
    @length = length
    @miles = miles
  end
  def total
  @@sum_total = (@wieght * 0.07) + (@width * @height * @length /200) + (@miles * 0.02)
   end
end

#  REFACTOR!!!
# def wieght_cost
#   @wieght * 2
# end
#
# def size_cost
#    @width * @hieght * @length /100
# end
#
# def mile_cost
#   @miles * 0.5
# end
