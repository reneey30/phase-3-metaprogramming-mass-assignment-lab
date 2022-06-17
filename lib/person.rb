class Person
  
  def initialize(attr)
     attr.each{
      |key, value| 
       self.class.attr_accessor(key)
        self.send("#{key}=", value)
    }
  end
end
