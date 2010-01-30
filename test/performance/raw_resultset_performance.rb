require 'lib/helper'
require 'benchmark'

2000.times do |i|
  User.create(:first_name => 'Andrew', :last_name => "Carpenter #{i}")
end
2000.times do |i|
  User.create(:first_name => 'Tim', :last_name => "Harrison #{i}")
end

n = 100
Benchmark.bm(15) do |x|
  %w(all find_as_hashes find_as_hash find_as_arrays find_as_array).each do |method|
    x.report(method) do
      n.times do
        users = User.send(method, :select => "id, first_name", :conditions => {:first_name => 'Tim'})
      end
    end
  end
end