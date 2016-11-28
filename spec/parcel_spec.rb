require ("parcel")
require ("rspec")

describe(Parcel) do
  describe('#wieght_cost') do
    it "will return the cost based on parcel wieght" do
      new_wieght = Parcel.new(4, 0, 0, 0, 0)
      expect(new_wieght.total()).to(eq(8))
    end
  end

  describe('#size_cost') do
    it "will return the cost based on parcel size" do
      new_size = Parcel.new(0, 12 ,12, 12, 0)
      expect(new_size.total()).to(eq(17))
    end
  end

  describe('#mile_cost') do
    it "will return the cost based on mileage" do
      new_mileage = Parcel.new(0, 0 ,0, 0, 53)
      expect(new_mileage.total()).to(eq(26.5))
    end
  end
end
