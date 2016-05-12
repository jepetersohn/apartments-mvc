require_relative './view.rb'
require_relative './apartment.rb'
require_relative './apartment_loader.rb'

class Controller

  def initialize
    @view = View.new
    @apts = Apartment.all
  end

  def show_apt_list
    apts = Apartment.all
    @view.show_apartment_list(apts)
  end

  def add_an_apartment(cmd)
    arr = cmd.split(' ')
    params = { rent:  arr[1], square_feet: arr[2],
      room_count: arr[3], bathroom_count: arr[4] }
    @apts.push(Apartment.new(params))
    @view.show_apartment_list(@apts)
  end

  def run_loop
    while (cmd = @view.get_next_command) != 'end'
      show_apt_list if cmd == 'list'
      add_an_apartment(cmd) if cmd.start_with? 'add'
    end
  end

end


#runner
c = Controller.new
c.run_loop

