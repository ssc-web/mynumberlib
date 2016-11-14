require "spec_helper"

describe Mynumberlib do
  it "has a version number" do
    expect(Mynumberlib::VERSION).not_to be nil
  end

  it "returns true if a valid mynumber has been given." do
    expect(Mynumberlib.is_valid_mynumber?("023456789013")).to be true
  end

  it "returns false if an invalid mynumber has been given." do
    expect(Mynumberlib.is_valid_mynumber?("023456789012")).to be_falsey
  end

  it "returns false if a shorter-digit mynumber has been given." do
    expect(Mynumberlib.is_valid_mynumber?("0")).to be_falsey
  end

  it "returns false if an arg that has 12 characters but include non-numeric character has been given." do
    expect(Mynumberlib.is_valid_mynumber?("a012345678901")).to be_falsey
  end

  
end
