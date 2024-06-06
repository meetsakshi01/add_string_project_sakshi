class AddHelper < ApplicationRecord
  def self.add(s)
    s.split(',').map{|i| i.to_i}.sum
  end
end
  