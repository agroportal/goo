require 'minitest/autorun'
require_relative '../lib/goo'

# ActiveSupport 7+ core extensions need `require "active_support"` first.
# Without it Time.zone raises NameError, which kills rufus-scheduler in
# anything built on goo (ncbo_cron).
class TestActiveSupport < Minitest::Test
  def test_time_zone
    Time.zone
    pass
  end
end
