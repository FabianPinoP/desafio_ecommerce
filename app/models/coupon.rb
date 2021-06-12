class Coupon < ApplicationRecord
  belongs_to :user

  def usable?
    valid_on_count?
  end

  def valid_on_count?
    if kind.eq?('target')
      return(count>0)
    end
  end
end
