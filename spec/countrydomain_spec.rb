require "spec_helper"

describe Countrydomain do

  context "constants" do
    it { should have_constant(:COUNTRYDOMAIN) }
  end

  context "::COUNTRYDOMAIN" do
    it "should be 15" do
       Countrydomain::COUNTRYDOMAIN.count.should == 15
    end
  end

  context "::COUNTRYDOMAIN" do
    it "should be 12" do
       Countrydomain::COUNTRYDOMAIN.count.should == 15
    end
  end

  context "::COUNTRYDOMAIN_DATA" do
    let(:countries) {  Countrydomain::YML_COUNTRYDOMAIN.map { |_, v| v}.flatten.sort }

    it "provinces should be consistent with PROVINCES" do
      countries.should ==  Countrydomain::COUNTRYDOMAIN
    end
  end
end
