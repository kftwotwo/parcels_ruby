require ("parcel")
require ("rspec")

describe(Parcel) do
  describe('#total_weight_cost') do
    it "will return the cost based on parcel wieght" do
      new_parcel = Parcel.new(2)
      expect(new_parcel.total_weight_cost(2)).to(eq(4))
    end
  end

  describe('#total_size') do
    it "will return the cost based on parcel size" do
      new_parcel = Parcel.new(1, 1, 1)
      expect(new_parcel.total_size(10, 10, 10)).to(eq(1000))
    end
  end

  describe('#total_size_cost') do
    it "will return the cost based on parcel size" do
      new_parcel = Parcel.new(1, 200, 1)
      expect(new_parcel.total_size_cost(1000)).to(eq(5))
    end
  end

  describe('#total_mile_cost') do
    it "will return the cost based on mileage" do
      new_parcel = Parcel.new(53)
      expect(new_parcel.total_mile_cost(1)).to(eq(0.02))
    end
  end

  describe('#shipping_options') do
    it "will have addtional for shippping options" do
      new_parcel = Parcel.new(53)
      expect(new_parcel.shipping_options(1)).to(eq(0.3))
    end
  end

  describe('#wrapping_option') do
    it "will have addtional charge for gift wrap" do
      new_parcel = Parcel.new(22)
      expect(new_parcel.wrapping_option(1)).to(eq(0.8))
    end
  end

  describe('#total') do
    it "will return the total" do
      new_parcel = Parcel.new(1, 1, 1)
      expect(new_parcel.total(10, 12, 11)).to(eq(33))
    end
  end
end
