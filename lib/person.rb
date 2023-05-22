class Person
  def initialize(args)
    args.each do |key, value|
      self.class.attr_accessor(key)
      self.send("#{key}=",value)
    end
  end
end

bob_attributes = { name: "Bob", hair_color: "Brown" }
p1 = Person.new(bob_attributes)

puts p1.name