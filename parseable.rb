module Parseable

  def self.load_studios(filename)
    studios = []

    CSV.foreach(filename, headers: true, header_converters: :symbol) do |row|
      studios << Studio.new(row)
    end  

    return studios
  end
end