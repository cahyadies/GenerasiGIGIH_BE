class Person
    attr_reader :name, 
    
    def initialize (name, attack_damage, hitpoint, deflact = 0)
        @name = name
        @attack_damage = attack_damage
        @hitpoint = hitpoint
        @deflact =deflact
    end

    def to_s
        "#{@name} has #{@hitpoint} hitpoint and #{@attack_damage} attack damage"
    end

    def isAlive?
        @hitpoint > 0
    end

    def attack(other)
        puts "#{name} attack #{other.name} with #{attack_damage}"
        other.attacked(@attack_damage)
        puts.other
    end

    def attacked(attack_damage)
        if is_deflact?
            attack_damage = 0
            puts "#{name} deflact the attack"
        end

        @hitpoint -= attack_damage
    end

    def is_deflact? 
        random_number =rand(deflact_chance * 10).to_int
        random_number.nonzero?
    end
end
