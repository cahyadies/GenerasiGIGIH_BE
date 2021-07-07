require_relative 'person'

Jin = Person.new ("Jin Sakai", 100, 50, 0.8)


Khotun = Person.new ("Khotun Khan", 500, 50)

puts Jin
puts Khotun

while true
    Jin.attack(Khotun)
    break unless Khotun.isAlive?

    Khotun.attack(Jin)
    break unless Jin.isAlive?
end

puts "#{Jin.name} is dead" unless Jin.isAlive?
puts "#{Khotun.name} is dead" unless Khotun.isAlive?
