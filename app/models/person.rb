class Person < ActiveRecord::Base
  has_many :addresses
  def addresses_attributes=(address)
    self.address = Person.find_or_create_by(name: address[:name])
    self.address.update(address)
  end

end
