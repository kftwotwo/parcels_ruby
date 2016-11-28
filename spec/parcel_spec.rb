require ("parcel")
require "rspec"

describe(Parcel) do
  describe('#wieght_cost') do
    it "will return the cost based on parcel wieght" do
      new_wieght = Parcel.new(4, 0, 0, 0, 0)
      expect(new_wieght.wieght_cost()).to(eq(8))
    end
  end

  describe('#size_cost') do
    it "will return the cost based on parcel size" do
      new_size = Parcel.new(0, 12 ,12, 12, 0)
      expect(new_size.size_cost()).to(eq(17))
    end
  end

  describe('#size_cost') do
    it "will return the cost based on parcel size" do
      new_size = Parcel.new(0, 12 ,12, 12, 0)
      expect(new_size.size_cost()).to(eq(17))
    end
  end
end
