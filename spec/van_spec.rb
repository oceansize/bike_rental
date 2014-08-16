require_relative './bike_container_spec'
require './lib/van'

describe Van do

  it_behaves_like 'a bike container'

end