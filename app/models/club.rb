class Club < ActiveRecord::Base
  scope :exclusive, where(:exclusive => true)
  scope :unexclusive, where(:exclusive => false)  
  
  acts_as_gmappable
  
  def gmaps4rails_address 
    self.address
  end

  
end
