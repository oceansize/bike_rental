require './lib/bike_container'
require './lib/bike'

shared_examples 'a bike container' do

  let(:bike)    { Bike.new            }
  let(:holder)  { described_class.new }

  def fill_holder holder
    10.times { holder.store(Bike.new) }
  end

  it 'should accept a bike' do
    expect(holder.bike_count).to eq 0
    holder.store(bike)
    expect(holder.bike_count).to eq 1
  end

  it 'should release a bike' do
    holder.store(bike)
    holder.release(bike)
    expect(holder.bike_count).to eq 0
  end

  it 'should know when it is full' do
    expect(holder).not_to be_full
    fill_holder holder
    # expect(holder).to be_full
  end

  it 'should not accept a bike if full' do
    fill_holder holder
    expect(lambda { holder.store(bike) }).to raise_error(RuntimeError)
  end

  it 'should provide a list of available bikes' do
    working_bike, broken_bike = Bike.new, Bike.new
    broken_bike.break!
    holder.store working_bike
    holder.store broken_bike
    expect(holder.available_bikes).to eq([working_bike])
  end


end