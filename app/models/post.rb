class Post < ActiveRecord::Base
  attr_accessible :title, :body

  validates_presence_of :title

  def publish
    self.published = true
    save
  end
end