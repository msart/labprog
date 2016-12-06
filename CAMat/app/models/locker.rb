# -*- encoding : utf-8 -*-
class Locker < ActiveRecord::Base
  attr_accessible :code, :owner
  
  attr_writer :strategy
  attr_reader :strategy
  
  def set_strategy
  	if(self.number < 9)
	 	  self.strategy = LowerLockerPricingStrategy.new(20)
		else
			self.strategy = UpperLockerPricingStrategy.new(20)
  	end
  end
  
  def price
		return self.strategy.price 
  end
  
  def free?
  	return owner.to_s == ""
  end
  
  def number
  	return (code[1]+code[2]).to_i
  end
end

class LockerPricingStrategy
  def initialize(price_in_br)
    @base_price = price_in_br
  end
end

class LowerLockerPricingStrategy < LockerPricingStrategy
  def price
    return "R$#{@base_price},00"
  end
end
  
class UpperLockerPricingStrategy < LockerPricingStrategy
  def price
    return "R$#{@base_price + 10},00" 
  end  
end

