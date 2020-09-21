# Add a Menu class

class Menu
    attr_accessor :name
    attr_accessor :flavour
    attr_accessor :budget
    attr_accessor :originality
    attr_accessor :flavours
    attr_accessor :originalities


    def initialize(name:, budget:, flavour:, originality:)
        self.name = name
        self.budget = budget
        self.flavour = flavour
        self.originality = originality
    end

end
