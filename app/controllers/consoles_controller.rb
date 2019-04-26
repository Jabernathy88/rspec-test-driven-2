class ConsolesController < ApplicationController
  def index
    consoles = [
      { name: 'NES', manufacturer: 'Nintendo' },
      { name: 'SNES', manufacturer: 'Nintendo' },
      { name: 'Genesis', manufacturer: 'Sega' },
      { name: 'Xbox', manufacturer: 'Microsoft' },
      { name: 'PS4', manufacturer: 'Sony' },
      { name: 'Switch', manufacturer: 'Nintendo' }
    ]
    if params[:manufacturer].present?
      consoles = consoles.select do |console| 
        console[:manufacturer] == params[:manufacturer] 
      end
    end
    render json: { consoles: consoles.map { |console| console[:name] } }
  end
end
