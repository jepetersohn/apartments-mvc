require 'CSV'
class ApartmentLoader
  def self.load_apartments(filename)
    apartments = []

    CSV.foreach(filename, headers: true, header_converters: :symbol) do |row|
      apartments << Apartment.new(row)
    end

    apartments
  end
end
