class View
  COL_WIDTH = 9
# :rent, :square_feet, :room_count, :bathroom_count
  def show_apartment_list(apts)
    result = "     Rent     Sq ft   Rooms    Bathrooms\n"
    apts.each do |apt|
      result += apt.rent.to_s.rjust(COL_WIDTH, " ")
      result += apt.square_feet.to_s.rjust(COL_WIDTH, " ")
      result += apt.room_count.to_s.rjust(COL_WIDTH, " ")
      result += apt.bathroom_count.to_s.rjust(COL_WIDTH, " ")
      result += "\n"
    end
    puts result
  end

  def get_next_command
    puts "Enter one of list, add or end to exit"
    puts "To add an apartment enter add [rent] [sqft] [rooms] [bathrooms]"
    gets.chomp.downcase
  end


end