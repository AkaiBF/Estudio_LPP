class Menu
    attr_accessor :heading, :material, :instructions
    
    def initialize() 
        @heading = nil
        @material = nil
        @instructions = nil
    end
    
    def has_heading()
        if @heading == nil
            return false
        else
            return true
        end
    end
    
    def set_heading(var)
        @heading = var
    end
    
    def to_s()
        out = "Receta\n"
        out << (@heading).to_s
        out << "\n"
        out << (@material).to_s
        out << "\n"
        out << (@instructions).to_s
        return out
    end
end

menutest = Menu.new()
menutest.set_heading("Esto es un test")
puts(menutest)