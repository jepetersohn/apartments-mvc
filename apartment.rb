
class Apartment
  attr_reader :rent, :square_feet, :room_count, :bathroom_count

  def initialize(args={})
    @rented = false
    @pets_allowed = false
    @rent = args[:rent]
    @square_feet = args[:square_feet]
    @room_count = args[:room_count]
    @bathroom_count = args[:bathroom_count]
  end

  def yearly_cost
    broker_fees + yearly_rent + security_deposit
  end

  def pets_allowed?
    @pets_allowed
  end

  private

  def broker_fees
    yearly_rent * 0.15
  end

  def yearly_rent
    self.rent * 12
  end

  def security_deposit
    self.rent * 2
  end

  def self.all
    ApartmentLoader.load_apartments('./apartments.csv')
  end

end