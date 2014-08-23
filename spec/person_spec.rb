require 'person'

describe Person do

  let(:person)  { Person.new         }
  let(:station) { DockingStation.new }

  it 'should not have a bike from birth' do
    expect(person.have_bike?).to be false
  end

  it 'should be able to have a bike' do
    bike = Bike.new
    station.store bike
    person.rent_bike_from station
    expect(person.have_bike?).to be true
  end

  it 'is able to dock a bike' do
  end

end