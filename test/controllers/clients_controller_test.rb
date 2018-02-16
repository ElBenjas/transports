require 'test_helper'

class ClientsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test 'INDEX get' do
    get clients_path
    assert_response :success
  end
end
