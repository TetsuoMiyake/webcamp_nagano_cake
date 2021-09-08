class OrderDetail < ApplicationRecord
    belongs_to :order
    belongs_to :item
    
      enum status: {
    "製作不可": 0,
    "製作待ち": 1,
    "製作中": 2,
    "完成": 3,
  }
end
