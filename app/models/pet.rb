class Pet < ActiveRecord::Base
  belongs_to :instituion
  belongs_to :user

end
