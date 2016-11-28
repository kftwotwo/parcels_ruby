require ("parcel")
require "rspec"

describe(Parcel) do
  describe('#wieght_cost') do
    it "will return the cost based on parcel wieght" do
      new_wieght = Parcel.new(4)
      expect(new_wieght.wieght_cost()).to(eq(8))
    end
  end
end
