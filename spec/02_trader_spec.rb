require_relative '../lib/02_trader'

describe "#day_trader" do

  it " " do
    s = day_trader([35,45,88,5,59,27,51,34,87,89])
    expect(s).to eq([3,9])
  end

  it " " do
    s = day_trader([21,51,3,88,64,76,1,51,55,32,20,8])
    expect(s).to eq([2,3])
  end

  it " " do
    s = day_trader([51,51,12,87,13,52,20,1,82,54])
    expect(s).to eq([7,8])
  end

end