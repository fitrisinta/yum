require "./menu"

class Food < Menu
    attr_accessor :vegan
    attr_accessor :healthy

    def initialize(name:, budget:, flavour:, originality:, vegan:, healthy:)
        super(name: name, budget: budget, flavour: flavour, originality: originality)
        self.vegan = vegan
        self.healthy = healthy
    end

    def info
        return "#{self.name} #{self.budget} #{self.vegan} #{self.flavour} #{self.healthy} #{self.originality}"
    end

end

