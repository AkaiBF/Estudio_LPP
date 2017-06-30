class Lista
    Nodo = Struct.new(:value, :next)
    
    attr_accessor :first
    def initialize()
        @first = Nodo.new(nil, nil)
    end
    
    def initialize(x)
        @first = Nodo.new(x, nil)
    end
    
    def unshift()
        result = @first.value
        @first = @first.next
        return result
    end
    
    def push(x)
        nodo = Nodo.new(x, nil)
        nodofinal = @first
        while nodofinal.next != nil do
            nodofinal = nodofinal.next
        end
        nodofinal.next = nodo
    end
    
    def pop()
        nodofinal = @first
        if nodofinal.next == nil then
            result = nodofinal.value
            @first = nil
            return result
        else
            while nodofinal.next.next != nil do
                nodofinal = nodofinal.next
            end
            result = nodofinal.next.value
            nodofinal.next = nil
            return result
        end
    end
    
    def exist?
        return true
    end
end