require "spec_helper"

describe "Publish post" do
  context "with valid data" do

    before do
      visit "/"
      click_link I18n.t(:new_post)

      fill_in "post_title", :with => "My first post!"
      fill_in "post_body", :with => "Hello world!"

      click_button I18n.t(:publish_post)
    end

    it "shows notification" do
      page.should have_content I18n.t(:you_succesfully_published_a_post)
    end

    it "redirects to posts path"

  end
end