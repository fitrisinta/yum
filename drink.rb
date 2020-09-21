require "./menu"

class Drink < Menu
    attr_accessor :size
    attr_accessor :temperature
    attr_accessor :caffeine

    def initialize(name:, budget:, flavour:, originality:, size:, temperature:, caffeine:)
        super(name: name, budget: budget, flavour: flavour, originality: originality)
        self.size = size
        self.temperature = temperature
        self.caffeine = caffeine
    end

    def info
        return "#{self.name} #{self.budget} #{self.size} #{self.caffeine} #{self.flavour} #{self.temperature} #{self.originality}"
    end
    
end