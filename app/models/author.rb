class Author < ActiveRecord::Base
  has_many :posts
end

#nested resource of an author for routing purposes
