require 'test_helper'

class PerfumesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get perfumes_index_url
    assert_response :success
  end

end
