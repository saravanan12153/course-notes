class Esoteric


  def method_missing(method)
    if method.to_s.shift(3) == "by_"
      self.by_condition(condition)
    else
      super
    end
  end


end

Photo.by_location("Fishers")
Photo.by_tag("sports")
Photo.by_photographer("Chuck")

Photo.by_condition(condition, arg)

def self.by_condition(condition)
  @@our_deliveries.group_by{|delivery| delivery.send(condition.to_sym)}
end
