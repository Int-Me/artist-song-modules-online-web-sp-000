module Findable
  def self.find_by_name(name)
    ObjectSpace.each_object(self).to_s.detect{|a| a.name == name}
  end
end
