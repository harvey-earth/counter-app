require 'test_helper'

class CounterControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get '/'
    assert_response :success
    assert_select 'h1', 'Counter'
  end
end
