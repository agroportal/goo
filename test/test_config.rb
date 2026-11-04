require_relative 'test_case'

class TestConfig < MiniTest::Unit::TestCase

  # Redis client must target the configured host (e.g. REDIS_HOST=redis-ut in containers)
  def test_redis_backend_host
    connection = Goo.redis_client.connection

    assert_equal Goo.settings.goo_redis_host, connection[:host]
    assert_equal Goo.settings.goo_redis_port.to_i, connection[:port]
  end

end
