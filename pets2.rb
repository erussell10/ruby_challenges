class Pet

    def set_name=(pet_name)
        @name = pet_name
    end

    def get_name
        return @name
    end

    def set_owner=(owner_name)
        @owner_name = owner_name
    end

    def get_owner
        return @owner_name
    end

    def set_noise=(noise)
        @noise = noise
    end

    def get_noise
        return @noise
    end
    
end

my_ferret = Pet.new
my_ferret.set_name= "Fredo"
ferret_name = my_ferret.get_name
my_ferret.set_noise= "squeee"
ferret_noise = my_ferret.get_noise

my_parrot = Pet.new
my_parrot.set_name= "Budgie"
parrot_name = my_parrot.get_name
my_parrot.set_noise= "tweeeet"
parrot_noise = my_parrot.get_noise

my_chinchilla = Pet.new
my_chinchilla.set_name= "Dali"
chinchilla_name = my_chinchilla.get_name
my_chinchilla.set_noise= "squeeee"
chinchilla_noise = my_chinchilla.get_noise

puts "#{ferret_name} says #{ferret_noise},
#{parrot_name} says #{parrot_noise},
and #{chinchilla_name} says #{chinchilla_noise}."

