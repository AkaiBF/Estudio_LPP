require 'menu'

RSpec.describe Menu, "#heading" do
    context "The heading" do
        it "does exist" do
            menu = Menu.new()
            menu.set_heading("Esto es una cabecera")
            expect(menu.has_heading()).to eq true
        end
    end
end

