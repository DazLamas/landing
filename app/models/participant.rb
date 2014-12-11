class Participant < ActiveRecord::Base
  has_many :friends
end
