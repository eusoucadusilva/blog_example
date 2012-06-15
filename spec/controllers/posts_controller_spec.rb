require "spec_helper"

describe PostsController do
  describe "GET :index" do
    before do
      get :index
    end

    it "returns success" do
      response.should be_success
    end

    it "returns posts in descending order" 
  end

  describe "GET :new" do
    before do
      get :new
    end

    it "returns success" do
      response.should be_success
    end

    it "assigns a post" do
        assigns[:post].should be_kind_of Post
    end

    it "assigns a new post" do
        assigns[:post].should_not be_persisted
    end
  end

  describe "POST :create" do
    before do
      post :create, :post => { :title => "Hello", :body => "My first post!" }
    end

    it "redirects to posts path" do
      response.should redirect_to posts_path
    end

    it "publishes post" do
      assigns[:post].should be_published
    end

    it "shows success message" do
      flash[:notice].should == I18n.t(:you_succesfully_published_a_post)
    end
  end
end