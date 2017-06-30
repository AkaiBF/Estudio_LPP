require 'prac7'

RSpec.describe Lista, '#Nodo' do
    context 'Existencia de nodo con valor y siguiente nodo' do
        it 'confirmada' do
            Nodo = Struct.new(:value, :next)
            @value = 4
            nodo = Nodo.new(@value, nil)
            expect(nodo.value).to eq 4
        end
    end
end

RSpec.describe Lista, '#Lista' do
    context 'Extracción del primer elemento' do
        it 'correcta' do
            lista = Lista.new(5)
            expect(lista.unshift()).to eq 5
        end
    end
    
    context 'Inserción de un elemento' do
        it 'correcta' do
            lista = Lista.new(5)
            lista.push(3)
            expect(lista.pop()).to eq 3
        end
    end
    
    context 'Inserción de más de un elemento' do
        it 'correcta' do
            lista = Lista.new(1)
            lista.push(2)
            lista.push(3)
            expect(lista.pop()).to eq 3
        end
    end
    
    context 'Existencia de una lista con su cabeza' do
        it 'confirmada' do
            lista = Lista.new(0)
            expect(lista).to exist
        end
    end
end