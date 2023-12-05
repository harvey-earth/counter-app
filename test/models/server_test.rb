require "test_helper"

class ServerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "server should have hostname" do
    server = Server.new
    assert_not server.save
    server.name = "server"
    assert server.save
  end

end
