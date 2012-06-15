require "spec_helper"

describe Post do
  subject { FactoryGirl.build :post }

  context "when is published" do
    before { subject.publish }

    it "it's saved" do
      subject.should be_persisted
    end

    it "becomes published" do
      subject.should be_published
    end

    it "becomes published" do
      subject.save
      subject.id.should == 1
    end
  end

  describe "validates" do
    it "presence of title" do
      subject.title = nil
      subject.should_not be_valid
    end
  end 
end