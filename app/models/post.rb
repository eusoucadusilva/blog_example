class Post < ActiveRecord::Base
  attr_accessible :title, :body

  def publish
    self.published = true
    save
  end
end