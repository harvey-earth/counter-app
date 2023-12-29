require 'test_helper'

class VisitTest < ActiveSupport::TestCase
  test 'visits should have a server' do
    visit = Visit.new
    assert_not visit.save
  end
end
