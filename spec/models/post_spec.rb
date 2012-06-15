require "spec_helper"

describe Post do
  subject { Post.new(:title => "Hello", :body => "My first post!") }

  context "when is published" do
    before { subject.publish }

    it "it's saved" do
      subject.should be_persisted
    end

    it "becomes published" do
      subject.should be_published
    end
  end
end