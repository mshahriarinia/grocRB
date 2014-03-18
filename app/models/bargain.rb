class Bargain < ActiveRecord::Base
  belongs_to :store
  belongs_to :user
  belongs_to :product_type
  
end
