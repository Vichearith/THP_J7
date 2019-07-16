require_relative '../lib/01_cryptofolies'

describe "#caesar_cipher" do

  it "'What a string!' offset by 5" do
    s = caesar_cipher("What a string!",5)
    expect(s).to eq("Bmfy f xywnsl!")
  end

  it "'Je m'appelle Eric' offset by 7" do
    s = caesar_cipher("Je m'appelle Eric",7)
    expect(s).to eq("Ql t'hwwlssl Lypj")
  end

  it "'Ave Caesar, ceux qui vont mourir te saluent !' offset by -25" do
    s = caesar_cipher("Ave Caesar, ceux qui vont mourir te saluent !",-25)
    expect(s).to eq("Bwf Dbftbs, dfvy rvj wpou npvsjs uf tbmvfou !")
  end
end

describe "#cipher_letter" do

  it "(a,2) give c" do
    s = cipher_letter("a",2)
    expect(s).to eq("c")
  end

  it "(Z,5) give E" do
    s = cipher_letter("Z",5)
    expect(s).to eq("E")
  end

  it "( ,9) give  " do
    s = cipher_letter(" ",9)
    expect(s).to eq(" ")
  end

  it "(',3) give '" do
    s = cipher_letter("'",3)
    expect(s).to eq("'")
  end

  it "(a,-2) give y" do
    s = cipher_letter("a",-2)
    expect(s).to eq("y")
  end
end