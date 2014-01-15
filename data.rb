require 'pry'

class Data
  attr_accessor :num_visitors, :date

  def initialize(site_data = {})
    @time_period = site_data[:time_period]
    @num_visitors = site_data[:number_of_visitors]
  end
end
end

binding.pry

d1 = Data.new(number_of_visitors: 488, start_time: '11:00', end_time: '11:45')
d2 = Data.new(number_of_visitors: 783, start_time: '18:00', end_time: '18:45')


