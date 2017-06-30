class Menu
    attr_accessor :title, :porc_ingesta
    
    def initialize()
        @title = "Título por defecto"
    end
    
    def exist_title()
        if @title != nil
            return true
        else
            return false
        end
    end
    
    def set_title(titulo)
        @title = titulo
    end
    
    def get_title()
        return @title
    end
end