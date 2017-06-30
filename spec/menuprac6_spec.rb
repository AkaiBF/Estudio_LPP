require 'menuprac6'

RSpec.describe Menu, 'Título' do
    context 'Existencia del atributo' do
        it 'confirmada' do
            menu = Menu.new()
            expect(menu.exist_title()).to eq true
        end
    end
    
    context 'Escritura del atributo' do
        it 'confirmada' do
            menu = Menu.new()
            menu.set_title("Título de prueba")
            expect(menu.get_title).to eq "Título de prueba"
        end
    end
end
